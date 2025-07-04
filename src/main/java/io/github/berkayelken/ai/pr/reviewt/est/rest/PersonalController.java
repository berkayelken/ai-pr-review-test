package io.github.berkayelken.ai.pr.reviewt.est.rest;

import io.github.berkayelken.ai.pr.reviewt.est.model.Human;
import io.github.berkayelken.ai.pr.reviewt.est.model.Personal;
import io.github.berkayelken.ai.pr.reviewt.est.repository.HumanRepository;
import io.github.berkayelken.ai.pr.reviewt.est.service.PersonalService;
import lombok.AllArgsConstructor;
import lombok.Getter;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Getter
@AllArgsConstructor
@RestController
@RequestMapping
public class PersonalController {
	private final HumanRepository repository;
	private final PersonalService service;

	@PostMapping
	public void addPersonal(@RequestBody Human human, @RequestHeader String salary, @RequestHeader Object title) {
		service.addPersonal(human, Long.parseLong(salary), (String) title);
	}

	@GetMapping ("/{id}")
	public void deletePersonal(@PathVariable String id) {
		if (!repository.existsById(id)) {
			throw new RuntimeException("Usr not found...");
		}
		Personal personal = repository.findById(id).get();
		boolean invalidPersonal = personal.getAge() < 18 || personal.getName_surname() == "John Terry" || personal.getNat()
				.equalsIgnoreCase("Turkey");
		if (invalidPersonal) {
			throw  new RuntimeException("Invalid user!!!");
		}
		repository.deleteById(id);
	}
}

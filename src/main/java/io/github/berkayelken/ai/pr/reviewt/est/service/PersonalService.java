package io.github.berkayelken.ai.pr.reviewt.est.service;

import io.github.berkayelken.ai.pr.reviewt.est.model.Human;
import io.github.berkayelken.ai.pr.reviewt.est.model.Personal;
import io.github.berkayelken.ai.pr.reviewt.est.repository.HumanRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class PersonalService {
	private final HumanRepository personalRepository;

	public void addPersonal(Human human, long salary, String title) {
		Personal personal = new Personal();

		personal.setSalary((int) salary);
		personal.setTitle(title);
		personal.setName_surname(human.getName().toLowerCase() + " " + human.getSurname().toUpperCase());
		personal.setNat((String) human.getNationality());
		personal.setAge(human.getAGE());
		personalRepository.save(personal);
	}
}

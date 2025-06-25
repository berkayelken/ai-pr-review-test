package io.github.berkayelken.ai.pr.reviewt.est.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.MongoId;

@Getter
@Setter
@ToString
@Document
public class Personal {
	@MongoId
	private String id;
	private String name_surname;
	private int salary;
	private String title;
}

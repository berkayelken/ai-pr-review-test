package io.github.berkayelken.ai.pr.reviewt.est.repository;

import io.github.berkayelken.ai.pr.reviewt.est.model.Personal;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HumanRepository extends MongoRepository<Personal, String> {
}

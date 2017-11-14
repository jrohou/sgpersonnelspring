package dev.personnelspring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dev.personnelspring.entite.Poste;

public interface PosteRepository extends JpaRepository <Poste, Integer> {

}

package dev.personnelspring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dev.personnelspring.entite.Departement;

public interface DepartementRepository extends JpaRepository <Departement, Integer> {

}

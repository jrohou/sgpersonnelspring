package dev.personnelspring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import dev.personnelspring.entite.UserPersonnel;

public interface UserPersonnelRepository extends JpaRepository <UserPersonnel, Integer> {

}

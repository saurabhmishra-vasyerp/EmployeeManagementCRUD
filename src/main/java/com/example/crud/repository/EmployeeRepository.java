package com.example.crud.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.crud.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee,Long>{
  
	List<Employee> findAllByNameContainingIgnoreCase(String search);
	Page<Employee> findAllByNameContainingIgnoreCase(Pageable pageable,String search);
}

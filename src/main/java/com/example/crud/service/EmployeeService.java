package com.example.crud.service;

import java.util.List;

import com.example.crud.model.Employee;

public interface EmployeeService {
   
//	List<Employee> getAllEmployees();
	List<Employee> getAllEmployees(int pageNumber,int pageSize,String search);
	Employee getEmployeeById(Long id);
	void createEmployee(Employee employee);
	void updateEmployee(Long id, Employee employee);
	void deleteEmployee(Long id);
	void saveEmployee(Employee employee);
}

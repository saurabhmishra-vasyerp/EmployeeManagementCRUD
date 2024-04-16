package com.example.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.crud.exception.EmployeeNotFoundException;
import com.example.crud.model.Employee;
import com.example.crud.repository.EmployeeRepository;

@Service
public class EmployeeServiceimpl implements EmployeeService{
	@Autowired
	private EmployeeRepository employeeRepository;

//	@Override
//	public List<Employee> getAllEmployees() {
//		
//		return employeeRepository.findAll();
//	}

	@Override
	public Employee getEmployeeById(Long id) {
		
		return employeeRepository.findById(id).orElseThrow(()->new EmployeeNotFoundException("Employee not found with id "+id));
	}

	@Override
	public void createEmployee(Employee employee) {
		employeeRepository.save(employee);
	}

	@Override
	public void updateEmployee(Long id, Employee employee) {
		if(!employeeRepository.existsById(id)) {
			throw new EmployeeNotFoundException("Employee Not found with id "+id);
		}
		employee.setId(id);
		employeeRepository.save(employee);
	}

	@Override
	public void deleteEmployee(Long id) {
		if(!employeeRepository.existsById(id)) {
			throw new EmployeeNotFoundException("Employee not found with id "+id);
		}
		employeeRepository.deleteById(id);
	}

	@Override
	public List<Employee> getAllEmployees(int pageNumber,int pageSize,  String search) {
		pageNumber= pageNumber-1;

		Pageable page= PageRequest.of(pageNumber, pageSize);
		Page<Employee> page2 = employeeRepository.findAllByNameContainingIgnoreCase(page, search);
		List<Employee> employees = page2.getContent();
		
		return employees;
	}

	@Override
	public void saveEmployee(Employee employee) {
		employeeRepository.save(employee);
		
	}

}

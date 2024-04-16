package com.example.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.crud.model.Employee;
import com.example.crud.service.EmployeeService;

@Controller
@RequestMapping("")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;

//	@GetMapping("/employees")
//	public String getAllEmployees(Model model) {
//		List<Employee> employees = employeeService.getAllEmployees();
//		model.addAttribute("employees", employees);
//		return "employeeList";
//	}
	@GetMapping("/employees")
	public String getAllEmployees(Model model,
			@RequestParam(name = "search", required = false, defaultValue = "") String search,
			@RequestParam(name = "page", required = false, defaultValue = "1") int pageNo,
			@RequestParam(name="pageSize",required = false,defaultValue = "5") int paageSize) {
		List<Employee> employees = employeeService.getAllEmployees(pageNo,paageSize, search);
		model.addAttribute("employees", employees);
		return "employeeList";
	}

	@GetMapping("/createEmployee")
	public String showCreateForm(Model model) {
		model.addAttribute("employee", new Employee());
		return "createEmployee";
	}

	@PostMapping("/createEmployee")
	public String createEmployee(Employee employee)

	{
		employeeService.createEmployee(employee);
		return "redirect:/employees";
	}

	@GetMapping("/editEmployee/{id}")
	public String showEditForm(@PathVariable("id") long id, Model model) {
		Employee employee = employeeService.getEmployeeById(id);
		model.addAttribute("employee", employee);
		return "editEmployee";
	}

	@PostMapping("/updateEmployee/{id}")
	public String updateEmployee(@PathVariable("id") long id, @Validated Employee employee,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "editEmployee";
		}

		employeeService.updateEmployee(id, employee);

		return "redirect:/employees";
	}

	@GetMapping("/deleteEmployee/{id}")
	public String deleteEmployee(@PathVariable("id") long id) {
		employeeService.deleteEmployee(id);
		return "redirect:/employees";
	}
     
	@GetMapping("/listEmployees")
	public String listEmployees(@RequestParam(name = "pageSize", defaultValue = "10") int pageSize, Model model) {
		//System.out.println("Page size " + pageSize);
		model.addAttribute("pageSize", pageSize);
		return "redirect:/employees";
	}
}

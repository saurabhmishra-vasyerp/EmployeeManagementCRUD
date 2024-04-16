package com.example.crud.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeDTO {
	private Long id;
    private String name;
    private int age;
    private String grade;
    private String gender;
    private LocalDate dob;
    private String hobby;
    private String phoneNumber;
    private String bloodGroup;
}

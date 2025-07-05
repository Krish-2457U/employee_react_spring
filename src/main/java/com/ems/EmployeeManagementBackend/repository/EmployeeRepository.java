package com.ems.EmployeeManagementBackend.repository;

import com.ems.EmployeeManagementBackend.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    // This interface will automatically provide CRUD operations for Employee entities
    // Additional query methods can be defined here if needed
}

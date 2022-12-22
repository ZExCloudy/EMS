package com.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, String>{
	List<Admin> findByUsernameAndPassword(String username,String Password);

}

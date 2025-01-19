package com.example.demo.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.User;

public interface UserService {

	public void addorupdateuser(User u);
	
	public User userlogin(String email , String pass);
	
	public User userbyid(int id);
	
	public List<User> viewalluser();
}

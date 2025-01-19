package com.example.demo.serviceimpl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.User;
import com.example.demo.repo.UserRepo;
import com.example.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepo repo;

//	private static String UPLOAD_DIR = System.getProperty("user.dir") + "/src/main/resources/static/image";

	@Override
	public void addorupdateuser(User u) {

		/*
		 * if (!file.isEmpty()) { try { String imagepath = saveImage(file);
		 * u.setImg(imagepath); } catch (IOException e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); } }
		 */

		repo.save(u);
	}

	/*
	 * private String saveImage(MultipartFile file) throws IOException {
	 * 
	 * String originalFileName = file.getOriginalFilename(); Path filepath =
	 * Paths.get(UPLOAD_DIR, originalFileName); Files.write(filepath,
	 * file.getBytes());
	 * 
	 * return "/image/" + originalFileName; }
	 */

	@Override
	public User userlogin(String email, String pass) {

		return repo.login(email, pass);

	}

	@Override
	public User userbyid(int id) {

		return repo.findById(id).orElseThrow();

	}

	@Override
	public List<User> viewalluser() {
		
		return repo.findAll();
	}

}

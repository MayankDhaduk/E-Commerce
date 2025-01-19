package com.example.demo.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Product;

public interface ProductService {

	public void addproduct(Product p);

	public List<Product> viewallproduct();

	public void deleteproduct(int id);

	public Product productbyid(int id);

}

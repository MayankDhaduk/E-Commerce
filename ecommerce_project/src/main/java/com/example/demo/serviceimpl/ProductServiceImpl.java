package com.example.demo.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Product;
import com.example.demo.repo.ProductRepo;
import com.example.demo.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepo productRepo;

	@Override
	public void addproduct(Product p) {

		productRepo.save(p);
	}

	@Override
	public List<Product> viewallproduct() {
		// TODO Auto-generated method stub
		return productRepo.findAll();
	}

	@Override
	public void deleteproduct(int id) {
		// TODO Auto-generated method stub
		productRepo.deleteById(id);
	}

	@Override
	public Product productbyid(int id) {
		// TODO Auto-generated method stub

		return productRepo.findById(id).orElseThrow();
	}

}

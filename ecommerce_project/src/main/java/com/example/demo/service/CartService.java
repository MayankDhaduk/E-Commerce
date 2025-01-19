package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Cart;

import jakarta.servlet.http.HttpSession;


public interface CartService {

	public void addorupdatecart(Cart c);

	public List<Cart> viewallcart();

	public void deletecart(int id);

	public Cart updatecart(int id);
	
	public List<Cart> cartbyuser(int id);

}

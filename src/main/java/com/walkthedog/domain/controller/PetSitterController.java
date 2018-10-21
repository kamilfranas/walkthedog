package com.walkthedog.domain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.walkthedog.domain.PetSitter;
import com.walkthedog.service.PetSitterServiceImpl;

@Controller
public class PetSitterController {
	@Autowired
	PetSitterServiceImpl service = new PetSitterServiceImpl();
	
	@ModelAttribute("PetSitter")
	public PetSitter getPetSitter() {
		return new PetSitter();
	}
	
	@RequestMapping("/petsitters")
	public String petSitterList(Model model) {
		model.addAttribute("list", service.getAllPetSitters());
		return "petSitter/petSitters";
	} 
	
}

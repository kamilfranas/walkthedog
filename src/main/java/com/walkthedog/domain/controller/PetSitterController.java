package com.walkthedog.domain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String showAll(Model model) {
		model.addAttribute("list", service.getAllPetSitters());
		return "petSitter/showAll";
	} 
	
	@RequestMapping(value = "/petsitter/id=${id}", params ="petSitterInfo", method = RequestMethod.POST)
	public String showPetSitter(Model model, @PathVariable int id) {
		model.addAttribute("petSitters", service.getPetSitterById(id));
		return "/petSitter/showPetSitter";
	}
	
	@RequestMapping("/petsitter/add")
	public String addForm() {
		return "/petSitter/addForm";
	}
	
	@RequestMapping(value = "/petsitter/editid=${id}", params = "editPetSitter", method = RequestMethod.POST)
	public String editForm(Model model, @PathVariable int id) {
		
		model.addAttribute("petSitter", service.getPetSitterById(id));
		return "/petSitter/editForm";
	}
	
	
}

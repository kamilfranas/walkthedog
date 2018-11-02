package com.walkthedog.domain.controller;

import javax.naming.Binding;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.walkthedog.domain.PetSitter;
import com.walkthedog.service.PetSitterServiceImpl;

@Controller
public class PetSitterController {
	@Autowired
	private PetSitterServiceImpl service;

	@ModelAttribute("PetSitter")
	public PetSitter getPetSitter() {
		return new PetSitter();
	}

	@RequestMapping("/petsitters")
	public String showAll(Model model) {
		model.addAttribute("list", service.getAllPetSitters());
		return "petSitter/showAll";
	}

	@RequestMapping(value = "/petsitter/id={id}", params = "petSitterInfo", method = RequestMethod.POST)
	public String showPetSitter(Model model, @PathVariable int id) {
		model.addAttribute("petSitter", service.getPetSitterById(id));
		return "petSitter/showPetSitter";
	}
	
	@RequestMapping(value = "/petsitter/id={id}", params = "removePetSitter", method = RequestMethod.POST)
	public String remove(@PathVariable int id) {
		service.removePetSitter(service.getPetSitterById(id));
		return "redirect:/petsitters";
	}

	@RequestMapping("/petsitter/add")
	public String addForm() {
		return "petSitter/addForm";
	}
	
	@RequestMapping(value= "/petsitter", params = "goBack")
	public String goBack() {
		return "redirect:/petsitters";
	}
	

	@RequestMapping(value = "/petsitter/add", params = "addPetSitter", method = RequestMethod.POST)
	public String addPetSitter(@ModelAttribute("PetSitter") @Valid PetSitter petSitter, BindingResult result) {
		if (result.hasErrors()) {
			return "petSitter/addForm";
		} else {
			service.addPetSitter(petSitter);
			return "petSitter/showAll";
		}
	}

	@RequestMapping(value = "/petsitter/id={id}", params = "editPetSitter", method = RequestMethod.POST)
	public String editPetSitter(@ModelAttribute("PetSitter") PetSitter petSitter, Model model, @PathVariable int id) {
		petSitter = service.getPetSitterById(id);
		model.addAttribute("petSitter", petSitter);
		return "petSitter/editForm";
	}

	@RequestMapping(value = "/petsitter/id={id}", params = "editPetSitterPost", method = RequestMethod.POST)
	public String editPetSitterPost(@ModelAttribute("PetSitter") @Valid PetSitter petSitter, BindingResult result,
			Model model, @PathVariable int id) {
		if (result.hasErrors()) {
			model.addAttribute("petSitter", service.getPetSitterById(id));
			return "petSitter/editForm";
		} else {
			service.editPetSitter(petSitter);
			return "redirect:/petsitters";
		}

	}
}

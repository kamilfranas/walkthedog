package com.walkthedog.domain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("greeting", "Welcome on Walkthedog website!");
		model.addAttribute("description", "Use the buttons below to show the list of animals or petsitters");
		return "welcome";
	}

	@RequestMapping(value = "/" , params="animalList", method = RequestMethod.POST)
	public String animalList() {
		
		return "redirect:/animals";

	}

	@RequestMapping(value = "/", params="petSittersList", method = RequestMethod.POST)
	public String petSitterList() {
		
		return "redirect:/petsitters";

	}
}

package com.walkthedog.domain.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.walkthedog.domain.Animal;
import com.walkthedog.service.AnimalServiceImpl;

@Controller
@ControllerAdvice
public class AnimalController {
	@Autowired
	private AnimalServiceImpl animalServiceimpl;

	@ModelAttribute("Animal")
	public Animal getAnimal() {
		return new Animal();
	}

	// all animals
	@RequestMapping("/animals")
	public String animalList(Model model) {
		model.addAttribute("animalList", animalServiceimpl.getAllAnimals());
		return "animals";
	}

	// animalEdit.jsp
	// cancel button
	@RequestMapping(value = "/animals/id={id}", params = "cancel", method = RequestMethod.POST)
	public String cancel() {
		return "redirect:/animals";
	}

	// animals.jsp
	// show details button
	@RequestMapping(value = "/animals/id={id}", params = "animalInfo", method = RequestMethod.POST)
	public String animalInfo(Model model, @PathVariable int id) {

		model.addAttribute("animal", animalServiceimpl.getAnimalById(id));
		return "animalInfo";
	}

	// edit animal button
	@RequestMapping(value = "/animals/id={id}", params = "animalEditGet", method = RequestMethod.POST)
	public String animalEditGet(@ModelAttribute("Animal") Animal animal, Model model, @PathVariable int id) {
		animal = animalServiceimpl.getAnimalById(id);
		model.addAttribute("Animal", animal);
		return "animalEditForm";
	}

	//confirm changes
	@RequestMapping(value = "/animals/id={id}", params = "confirm", method = RequestMethod.POST)
	public String animalEditPost(@ModelAttribute("Animal") @Valid Animal animal, BindingResult result, Model model, @PathVariable int id) {
		
		if (result.hasErrors()) {
			//animal = animalServiceimpl.getAnimalById(id);
			model.addAttribute("Animal", animal);
			return "animalEditForm";

		} else {
			animalServiceimpl.editAnimal(animal);
			return "redirect:/animals";
		}

	}

	// remove animal button
	@RequestMapping(value = "/animals/id={id}", params = "animalRemove", method = RequestMethod.POST)
	public String remove(@PathVariable int id) {
		animalServiceimpl.removeAnimal(id);
		return "redirect:/animals";
	}

	// welcome page
	@RequestMapping(value = "/", params = "mainPage", method = RequestMethod.POST)
	public String goMainPage() {
		return "redirect:/";
	}

	// add a new animal
	@RequestMapping(value = "/animals/add", params = "addNewAnimal", method = RequestMethod.POST)
	public String addNewAnimal() {
		return "addAnimalForm";
	}

	// animalInfo.jsp
	// go to animals button
	@RequestMapping(value = "/animals/animalinfo", params = "goback", method = RequestMethod.POST)
	public String goBack() {
		return "redirect:/animals";
	}

	// addAnimalForm.jsp
	@RequestMapping(value = "/animals/add", method = RequestMethod.GET)
	public String formularz() {
		return "addAnimalForm";
	}

	@RequestMapping(value = "/animals/add", params = "submitNewAnimal", method = RequestMethod.POST)
	public String submitNewAnimal(@ModelAttribute("Animal") @Valid Animal a, BindingResult result) {

		if (result.hasErrors()) {
			return "addAnimalForm";
		} else {
			animalServiceimpl.addAnimal(a);

			return "redirect:/animals";
		}

	}

}

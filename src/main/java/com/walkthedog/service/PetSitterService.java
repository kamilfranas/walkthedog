package com.walkthedog.service;

import java.util.List;

import com.walkthedog.domain.PetSitter;

public interface PetSitterService {
	void addPetSitter(PetSitter petSitter);
	void removePetSitter(PetSitter petSitter);
	void editPetSitter(PetSitter petSitter);
	PetSitter getPetSitterById(int id);
	List<PetSitter> getAllPetSitters();
	
}

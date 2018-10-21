package com.walkthedog.domain.repository;

import java.util.List;

import com.walkthedog.domain.PetSitter;

public interface PetSitterRepository {
	void add(PetSitter petSitter);
	void edit(PetSitter petSitter);
	void remove(PetSitter petSitter);
	List<PetSitter> getAllPetSitters();
	PetSitter getPetSitterById(int id);
	

}

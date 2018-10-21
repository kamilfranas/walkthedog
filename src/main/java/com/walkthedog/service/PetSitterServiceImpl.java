package com.walkthedog.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.walkthedog.domain.PetSitter;
import com.walkthedog.domain.repository.PetSitterRepositoryImpl;

@Service
public class PetSitterServiceImpl implements PetSitterService {
	@Autowired
	private PetSitterRepositoryImpl petSitterRepositoryImpl;

	@Transactional
	public void addPetSitter(PetSitter petSitter) {
		petSitterRepositoryImpl.add(petSitter);
	}

	@Transactional
	public void removePetSitter(PetSitter petSitter) {
		petSitterRepositoryImpl.remove(petSitter);
	}

	@Transactional
	public void editPetSitter(PetSitter petSitter) {
		petSitterRepositoryImpl.edit(petSitter);
	}

	@Transactional
	public PetSitter getPetSitterById(int id) {
		return petSitterRepositoryImpl.getPetSitterById(id);
	}

	@Transactional
	public List<PetSitter> getAllPetSitters() {
		return petSitterRepositoryImpl.getAllPetSitters();
	}

}

package com.walkthedog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.walkthedog.domain.Animal;
import com.walkthedog.domain.repository.AnimalRepository;

@Service
public class AnimalServiceImpl implements AnimalService {
	@Autowired
	private AnimalRepository animalRepository;

	@Transactional
	@Override
	public void addAnimal(Animal a) {
		animalRepository.addAnimal(a);

	}

	@Transactional
	@Override
	public void editAnimal(Animal a) {
		animalRepository.editAnimal(a);

	}

	@Transactional
	@Override
	public void removeAnimal(int id) {
		animalRepository.removeAnimal(id);

	}

	@Override
	public List<Animal> getAllAnimals() {

		return animalRepository.getAllAnimals();
	}
@Transactional
	@Override
	public Animal getAnimalById(int id) {
		return animalRepository.getAnimalById(id);
	}

}

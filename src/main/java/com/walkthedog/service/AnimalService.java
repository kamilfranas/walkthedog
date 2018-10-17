package com.walkthedog.service;

import java.util.List;

import com.walkthedog.domain.Animal;

public interface AnimalService {

	void addAnimal(Animal a);
	void editAnimal(Animal a);
	void removeAnimal(int id);
	Animal getAnimalById(int id);
	List<Animal> getAllAnimals();
	
}

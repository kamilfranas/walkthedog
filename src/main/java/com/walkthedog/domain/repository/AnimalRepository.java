package com.walkthedog.domain.repository;

import java.util.List;

import com.walkthedog.domain.Animal;

public interface AnimalRepository {
	
	void addAnimal(Animal a);
	void editAnimal(Animal a);
	void removeAnimal(int id);
	
	List<Animal> getAllAnimals();
	Animal getAnimalById(int id);
	

}

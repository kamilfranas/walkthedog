package com.walkthedog.domain.repository;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.walkthedog.domain.Animal;

@Repository
public class AnimalRepositoryImpl implements AnimalRepository {

	private SessionFactory sf = null;
	private List<Animal> list = new ArrayList<Animal>();
	private Transaction tx = null;

	public static Session session(SessionFactory sf) {
		sf = new Configuration().configure().addAnnotatedClass(Animal.class).buildSessionFactory();
		Session session = sf.openSession();
		return session;
	}

	@Override
	public void addAnimal(Animal a) {
		Session session = AnimalRepositoryImpl.session(sf);
		tx = session.beginTransaction();
		session.save(a);

		tx.commit();
		session.close();
	}

	@Override
	public void editAnimal(Animal a) {
		Session session = AnimalRepositoryImpl.session(sf);
		tx = session.beginTransaction();
		System.out.println(a.toString());
		session.update(a);
		tx.commit();
		session.close();
	}

	@Override
	public void removeAnimal(int id) {
		Session session = AnimalRepositoryImpl.session(sf);
		tx = session.beginTransaction();
		session.createQuery("delete from Animal where id = :x").setParameter("x", id).executeUpdate();

		tx.commit();
		session.close();
	}

	@Override
	public List<Animal> getAllAnimals() {

		Session session = AnimalRepositoryImpl.session(sf);
		tx = session.beginTransaction();
		list = session.createQuery("from Animal", Animal.class).getResultList();
		tx.commit();
		session.close();
		return list;
	}

	@Override
	public Animal getAnimalById(int id) {
		Session session = AnimalRepositoryImpl.session(sf);
		tx = session.beginTransaction();
		Animal a = session.createQuery("from Animal where id = :animalId", Animal.class).setParameter("animalId", id)
				.getSingleResult();
		tx.commit();
		session.close();

		return a;
	}

}

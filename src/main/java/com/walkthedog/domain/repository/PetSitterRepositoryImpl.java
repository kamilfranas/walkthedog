package com.walkthedog.domain.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.walkthedog.domain.PetSitter;
@Repository
public class PetSitterRepositoryImpl implements PetSitterRepository {
	private Transaction tr;
	private Session session;
	private List<PetSitter> list;

	public static Session getOpenedSession() {
		SessionFactory sf = new Configuration().configure().addAnnotatedClass(PetSitter.class).buildSessionFactory();
		Session session = sf.openSession();
		return session;
	}

	public void add(PetSitter petSitter) {
		session = getOpenedSession();
		tr = session.beginTransaction();
		session.save(petSitter);
		tr.commit();
		session.close();
	}

	public void edit(PetSitter petSitter) {
		session = getOpenedSession();
		tr = session.beginTransaction();
		session.update(petSitter);
		tr.commit();
		session.close();
	}

	public void remove(PetSitter petSitter) {
		session = getOpenedSession();
		tr = session.beginTransaction();
		session.remove(petSitter);
		tr.commit();
		session.close();
	}

	public List<PetSitter> getAllPetSitters() {
		session = getOpenedSession();
		tr = session.beginTransaction();
		list = session.createQuery("from PetSitter", PetSitter.class).getResultList();
		tr.commit();
		session.close();
		return list;
	}

	public PetSitter getPetSitterById(int id) {
		session = getOpenedSession();
		tr = session.beginTransaction();
		PetSitter petSitter = session.createQuery("from PetSitter where id=:id", PetSitter.class).setParameter("id", id)
				.getSingleResult();
		tr.commit();
		session.close();
		return petSitter;
	}

}

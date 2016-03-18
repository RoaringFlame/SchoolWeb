package com.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.config.HibernateSessionFactory;
import com.entity.Counter;

public class CounterDao {
	private Session session;
	private Transaction transaction;

	public Counter getCounterbyId(Integer id) {
		try {
			session = HibernateSessionFactory.getSession();
			Counter cou = (Counter) session.get(Counter.class, id);
			return cou;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public void updateCounter(Counter counter) {
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.update(counter);
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}

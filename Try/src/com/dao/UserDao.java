package com.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.config.HibernateSessionFactory;
import com.entity.User;

public class UserDao {
	private Session session;
	private Transaction transaction;
	private Query query;

	public User UserLogin(User user) {
		if (user.getUserName() != null && user.getUserPassword() != null) {
			try {
				session = HibernateSessionFactory.getSession();
				String hql = "from User as u where u.userName = :userName and u.userPassword = :userPassword";
				query = session.createQuery(hql);
				query.setParameter("userName", user.getUserName());
				query.setParameter("userPassword", user.getUserPassword());
				User ur = (User) query.uniqueResult();
				if (ur != null)
					return ur;
			} catch (HibernateException e) {
				e.printStackTrace();
				return null;
			} finally {
				session.close();
			}
		}
		return null;
	}

	public User findUserById(User user){
		try{
			session = HibernateSessionFactory.getSession();
			User use =(User)session.get(User.class, user.getUserId());
			return use;
		}catch(HibernateException e){
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	}
	
	public boolean updateUser(User user){
		try{
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.update(user);
			transaction.commit();
			return true;
		}catch(HibernateException e){
			e.printStackTrace();
			return false;
		}finally{
			session.close();
		}
	}

	public boolean saveUser(User user) {
		try{
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.save(user);
			transaction.commit();
			return true;
		}catch(HibernateException e){
			e.printStackTrace();
			return false;
		}finally{
			session.close();
		}
	}

}

package com.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.config.HibernateSessionFactory;
import com.entity.News;

public class NewsDao {
	private Session session;
	private Transaction transaction;
	private Query query;

	public boolean AddNews(News news) {
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.save(news);
			transaction.commit();
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public News findNews(Integer column, String title) {
		try {
			session = HibernateSessionFactory.getSession();
			session = HibernateSessionFactory.getSession();
			String hql = "from News as n where n.newsColumn=:newsColumn and n.newsTitle=:newsTitle";
			query = session.createQuery(hql);
			query.setParameter("newsColumn", column);
			query.setParameter("newsTitle", title);
			News news = (News) query.uniqueResult();
			if (news != null)
				return news;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
		return null;
	}

}

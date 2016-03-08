package com.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.config.HibernateSessionFactory;
import com.entity.News;
import com.entity.NewsDetail;

public class NewsDetailDao {

	private Session session;
	private Transaction transaction;
	private Query query;

	public boolean AddNewsDetail(News news, String content) {
		NewsDetail newsdetail = new NewsDetail();
		newsdetail = this.foo(news, content);
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.saveOrUpdate(newsdetail);
			transaction.commit();
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	private NewsDetail foo(News news, String content) {
		NewsDetail newsdetail = new NewsDetail();
		newsdetail.setNewsId(news.getNewsId());
		newsdetail.setNewsColumn(news.getNewsColumn());
		newsdetail.setNewsContents(content);
		return newsdetail;
	}
	
	public boolean deleteNewsDetailById(Integer newsId) {
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			NewsDetail newsDetail = (NewsDetail) session.get(NewsDetail.class, newsId);
			if (newsDetail != null) {
				session.delete(newsDetail);
				transaction.commit();
			}
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}
}

package com.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.config.HibernateSessionFactory;
import com.entity.News;
import com.entity.NewsDetail;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class NewsDetailDao {

	private Session session;
	private Transaction transaction;
	

	public boolean AddNewsDetail(News news, String content) {
		NewsDetail newsdetail = new NewsDetail();
		newsdetail = this.foo(news, content);
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.save(newsdetail);
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
	
	public NewsDetail getNewsDetialById(Integer newsId){
		try {
			session = HibernateSessionFactory.getSession();
			NewsDetail nD = (NewsDetail) session.get(NewsDetail.class, newsId);
			return nD;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}
	
	public boolean updateNewsDetail(NewsDetail newsDetail) {
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.update(newsDetail);
			transaction.commit();
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}
}

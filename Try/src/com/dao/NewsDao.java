package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.config.HibernateSessionFactory;
import com.entity.News;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
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

	public boolean updateNews(News news) {
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			session.update(news);
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

	public News getNewsById(Integer newsId) {
		try {
			session = HibernateSessionFactory.getSession();
			News news = (News) session.get(News.class, newsId);
			return news;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public boolean deleteNewsById(Integer newsId) {
		try {
			session = HibernateSessionFactory.getSession();
			transaction = session.beginTransaction();
			News news = (News) session.get(News.class, newsId);
			if (news != null) {
				session.delete(news);
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

	@SuppressWarnings("unchecked")
	public List<News> getNewsList(int page, int number) {
		List<News> list = new ArrayList<News>();
		try {
			session = HibernateSessionFactory.getSession();
			String hql = "from News";
			query = session.createQuery(hql);
			query.setFirstResult((page - 1) * number);
			query.setMaxResults(10);
			list = query.list();
			return list;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	public List<News> getColumnList(Integer column, int page, int maxnum) {
		List<News> list = new ArrayList<News>();
		try {
			session = HibernateSessionFactory.getSession();
			String hql = "from News as n where n.newsColumn = :newscolumn order by n.uploadDate desc";
			query = session.createQuery(hql);
			query.setParameter("newscolumn", column);
			query.setFirstResult((page - 1) * maxnum);
			query.setMaxResults(maxnum);
			list = query.list();
			return list;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public int getNewsAmount(Integer column) {
		int count = 0;
		try {
			session = HibernateSessionFactory.getSession();
			String hql = "select count(*) from News as n where n.newsColumn = :newscolumn";
			query = session.createQuery(hql);
			query.setParameter("newscolumn", column);
			long Count = (Long) query.uniqueResult();
			count = (int) Count;
			return count;
		} catch (HibernateException e) {
			e.printStackTrace();
			return count;
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	public List<News> getSearchList(String searchStr, int page, int maxnum) {
		List<News> list = new ArrayList<News>();
		try {
			session = HibernateSessionFactory.getSession();
			String hql = "from News as n where n.newsTitle like :searchStr order by n.uploadDate desc";
			query = session.createQuery(hql);
			query.setParameter("searchStr", "%" + searchStr + "%");
			query.setFirstResult((page - 1) * maxnum);
			query.setMaxResults(maxnum);
			list = query.list();
			return list;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public int getSearchAmount(String searchStr) {
		int count = 0;
		try {
			session = HibernateSessionFactory.getSession();
			String hql = "select count(*) from News as n where n.newsTitle like :searchStr";
			query = session.createQuery(hql);
			query.setParameter("searchStr", "%" + searchStr + "%");
			long Count = (Long) query.uniqueResult();
			count = (int) Count;
			return count;
		} catch (HibernateException e) {
			e.printStackTrace();
			return count;
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	public List<News> getRecentNews(int uMaxNumber) {
		List<News> list = new ArrayList<News>();
		try {
			session = HibernateSessionFactory.getSession();
			String hql = "from News as n order by n.uploadDate desc";
			query = session.createQuery(hql);
			query.setMaxResults(uMaxNumber);
			list = query.list();
			return list;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}
}

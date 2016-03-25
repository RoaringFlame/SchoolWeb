package com.listener;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.dao.CounterDao;
import com.dao.NewsDao;
import com.entity.Counter;
import com.entity.News;

import core.tool.PropertyReader;
import core.web.DBTimerTask;

/**
 * Description: <br/>
 * Copyright(C),2016-2017,Heng.Chen <br/>
 * GitHub:https://github.com/RoaringFlame <br/>
 * Date:2016年3月23日
 * 
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
@WebListener
public class WebInitListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		try {
			// 读取配置文件，存入application
			PropertyReader pr = new PropertyReader();
			pr.setFlieName("/column.properties");
			HashMap<String, String> map = pr.getHasMap();
			ServletContext application = sce.getServletContext();
			application.setAttribute("map", map);

			// 读取计数器，存入application
			CounterDao cDao = new CounterDao();
			Counter counter = cDao.getCounterbyId(1);
			application.setAttribute("counter", counter);

			// 读取各栏目新闻list，存入application作为首页展现
			// 这里将list放入application中作为缓存，所以在上传、更新、删除新闻时记得刷新该栏目在application中的list
			NewsDao nDao = new NewsDao();
			for (Map.Entry<String, String> entry : map.entrySet()) {
				String listname = "list" + entry.getKey();
				Integer column = Integer.parseInt(entry.getKey());
				List<News> newslist = nDao.getColumnList(column, 1, 7);
				application.setAttribute(listname, newslist);
			}
			
			// 启用Timer事务进程，进行每日数据更新任务
			DBTimerTask.getInstance();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void contextDestroyed(ServletContextEvent sce) {
		ServletContext application = sce.getServletContext();
		Counter counter = new Counter();
		if ((counter = (Counter) application.getAttribute("counter")) != null) {
			CounterDao cDao = new CounterDao();
			cDao.updateCounter(counter);
		}
	}
}

// 如果使用Timer事务更新数据库每日数据失败，还可改用数据库事件：
/*
 * create event dayUpdate on schedule every 1 day starts timestamp '2016-3-18
 * 01:00:00' do update counter set day_count = (day_count + 1) and
 * yestarday_count = today_count and today_count = 0 where count_id = 1;
 */

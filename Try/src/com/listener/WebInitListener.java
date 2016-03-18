package com.listener;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.dao.CounterDao;
import com.entity.Counter;

import core.tool.PropertyReader;
import core.web.ContextCounter;

@WebListener
public class WebInitListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		try {
			// 读取配置文件，并存入应用容器
			PropertyReader pr = new PropertyReader();
			pr.setFlieName("/column.properties");
			HashMap<String, String> map = pr.getHasMap();
			ServletContext application = sce.getServletContext();
			application.setAttribute("map", map);
			//读取计数器，存入application
			CounterDao cDao = new CounterDao();
			Counter counter = cDao.getCounterbyId(1);
			application.setAttribute("counter", counter);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("---应用结束事件WebInitListener");
		ContextCounter cc = new ContextCounter();
		cc.saveCounterInDB();
	}
}

package com.listener;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import core.tool.PropertyReader;
import core.web.ContextCounter;

@WebListener
public class WebInitListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("---应用初始化事件WebInitListener");
		try {
			// 读取配置文件，并存入应用容器
			PropertyReader pr = new PropertyReader();
			pr.setFlieName("/column.properties");
			HashMap<String, String> map = pr.getHasMap();
			ServletContext application = sce.getServletContext();
			application.setAttribute("map", map);
			//读取计数器，存入application
			ContextCounter cc = new ContextCounter();
			cc.initCounterInContext(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void contextDestroyed(ServletContextEvent sce) {
		ContextCounter cc = new ContextCounter();
		cc.saveCounterInDB();
	}
}

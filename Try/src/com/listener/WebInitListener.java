package com.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class WebInitListener implements ServletContextListener {
	
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("---应用初始化事件WebInitListener");
		try {
			ServletContext applicatioin = sce.getServletContext();
			// 注意后期改成取数据库数据，并添加更多内容
			applicatioin.setAttribute("count", "0");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void contextDestroyed(ServletContextEvent sce) {
	}
}

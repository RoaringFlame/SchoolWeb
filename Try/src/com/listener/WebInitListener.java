package com.listener;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import core.tool.PropertyReader;

@WebListener
public class WebInitListener implements ServletContextListener {
	
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("---应用初始化事件WebInitListener");
		try {
			//读取配置文件，并存入应用容器
			PropertyReader pr = new PropertyReader();
			pr.setFlieName("/column.properties");
			HashMap<String, String> map = pr.getHasMap();
			ServletContext applicatioin = sce.getServletContext();
			// 注意后期改成取数据库数据，并添加更多内容
			applicatioin.setAttribute("map", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void contextDestroyed(ServletContextEvent sce) {
	}
}

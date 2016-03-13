package com.listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionInitListener implements HttpSessionListener {

	//当用户与服务器连接时触发
	public void sessionCreated(HttpSessionEvent se){
		System.out.println("---sessionLister初始化");
		HttpSession session = se.getSession();
		ServletContext application = session.getServletContext();
		//操纵数据库让用户数增1
		//修改代码
		application.setAttribute("count", "-");
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}

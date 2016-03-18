package com.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import core.web.ContextCounter;

@WebListener
public class SessionInitListener implements HttpSessionListener {

	//当用户与服务器连接时触发
	public void sessionCreated(HttpSessionEvent se){
		//操纵数据库让用户数增1
		ContextCounter cc = new ContextCounter();
		cc.visitCount();
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}

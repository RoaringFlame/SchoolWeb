package com.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import core.web.ContextCounter;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
@WebListener
public class SessionInitListener implements HttpSessionListener {

	//当用户与服务器连接时触发
	public void sessionCreated(HttpSessionEvent se){
		//操纵数据库让用户数增1
		ContextCounter cc = new ContextCounter();
		cc.clickCount();
		cc.visitCount();
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}

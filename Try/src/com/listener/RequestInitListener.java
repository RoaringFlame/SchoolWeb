package com.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

import com.entity.Counter;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
@WebListener
public class RequestInitListener implements ServletRequestListener {

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		// TODO Auto-generated method stub
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		// 网站点击量问量+1
		ServletContext application = sre.getServletContext();
		Counter counter = (Counter) application.getAttribute("counter");
		if (counter != null) {
			int i = counter.getClickCount();
			counter.setClickCount(++i);
			application.setAttribute("counter", counter);
		}

	}

}

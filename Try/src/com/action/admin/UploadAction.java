package com.action.admin;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Description: <br/>
 * Copyright(C),2016-2017,Heng.Chen <br/>
 * GitHub:https://github.com/RoaringFlame <br/>
 * Date:2016年3月23日
 * 
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class UploadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	private String column;
	private String title;
	private String uploader;
	private String content;

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUploader() {
		return uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String execute() {
		if (title.equals("")) {
			addActionError("请输入标题！");
			return INPUT;
		}
		if (uploader.equals("")) {
			addActionError("请输入作者姓名！");
			return INPUT;
		}
		if (content.equals("")) {
			addActionError("内容不能为空！");
			return INPUT;
		}
		User user = (User) session.getAttribute("user");
		if (user != null) {
			NewsDao nDao = new NewsDao();
			Integer newsColumn = Integer.parseInt(column);
			
			//文章是否重复
			if (nDao.findNews(newsColumn, title) != null) {
				addActionError("文章已存在！");
				return INPUT;
			}
			// 实例化news再根据id得到news_detail并同时插入数据库（可加入newsDao中写成一个事务处理方法）
			// news的操作都危险，第一步和第二步不关联

			News news = new News();
			news.setNewsTitle(title);
			news.setNewsColumn(newsColumn);
			news.setLastOperation("发布");
			news.setNewsUploader(uploader);
			news.setOperator(user.getUserName());
			Date date = new Date();
			Timestamp timestamp = new Timestamp(date.getTime());
			news.setUploadDate(timestamp);
			news.setReadCount(0);
			
			// 如有文件，得到文件名
			if (session.getAttribute("filename") != null) {
				String filename = (String) session.getAttribute("filename");
				news.setFileName(filename);
				session.removeAttribute("filename");
			}

			NewsDetailDao ndDao = new NewsDetailDao();
			if (nDao.AddNews(news)) {
				if ((news = nDao.findNews(newsColumn, title)) != null) {
					if (ndDao.AddNewsDetail(news, content)) {

						// 刷新application中对应的list
						ServletContext application = request
								.getServletContext();
						String listname = "list" + column;
						Integer column = Integer.parseInt(this.column);
						List<News> newslist = nDao.getColumnList(column, 1, 7);
						application.setAttribute(listname, newslist);
						addActionError("发布成功！");
						return SUCCESS;
					}
				}
			}
		}
		addActionError("请重新登录！");
		return INPUT;
	}
}
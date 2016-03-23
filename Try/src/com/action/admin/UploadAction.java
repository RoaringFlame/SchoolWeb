package com.action.admin;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
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
		User user = (User) session.getAttribute("user");
		if (user != null) {
			// 实例化news再根据id得到news_detail并同时插入数据库（可加入newsDao中写成一个事务处理方法）
			// news的操作都危险，第一步和第二步不关联
			Integer newsColumn = Integer.parseInt(column);
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
				String filename = (String)session.getAttribute("filename");
				news.setFileName(filename);
				session.removeAttribute("filename");
			}
			
			NewsDao nDao = new NewsDao();
			NewsDetailDao ndDao = new NewsDetailDao();
			if (nDao.AddNews(news)) {
				if ((news = nDao.findNews(newsColumn, title)) != null) {
					if (ndDao.AddNewsDetail(news, content)) {
						return SUCCESS;
					}
				}
			}
		}
		return ERROR;
	}
}
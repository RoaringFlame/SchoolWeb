package com.action.admin;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

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
		// 实例化news再根据id得到news_detail并同时插入数据库（可加入newsDao中写成一个事务处理方法）
		// 判断返回状态，决定去向
		Integer newsColumn = Integer.parseInt(column);
		News news = new News();
		news.setNewsTitle(title);
		news.setNewsColumn(newsColumn);
		news.setLastOperation("发布");
		news.setNewsUploader(uploader);
		// 设置更新时间
		news.setReadCount(0);
		NewsDao nDao = new NewsDao();
		NewsDetailDao ndDao = new NewsDetailDao();
		if (nDao.AddNews(news)) {
			if ((news = nDao.findNews(newsColumn, title)) != null) {
				if (ndDao.AddNewsDetail(news, content)) {
					return SUCCESS;
				}
			}			
		}
		return ERROR;
	}
}
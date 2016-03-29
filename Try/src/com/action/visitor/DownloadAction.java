package com.action.visitor;

import java.io.InputStream;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.entity.News;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Description: <br/>
 * Copyright(C),2016-2017,Heng.Chen <br/>
 * GitHub:https://github.com/RoaringFlame <br/>
 * Date:2016年3月28日
 * 
 * @author Heng.Chen chenheng120@126.com
 * @version 1.1
 */
public class DownloadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private Integer newsId;
	// 分别获取文件名，文件MIME类型，和对应输入流参数传递到配置页面
	private String filename;
	private String mimeType;
	private InputStream inStream;

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getMimeType() {
		return mimeType;
	}

	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}

	public InputStream getInStream() {
		return inStream;
	}

	public void setInStream(InputStream inStream) {
		this.inStream = inStream;
	}

	public String execute() {
		NewsDao nDao = new NewsDao();
		News news = new News();
		if ((news = nDao.getNewsById(newsId)) != null) {
			filename = news.getFileName();
			ServletContext context = ServletActionContext.getServletContext();
			mimeType = context.getMimeType(filename);
			inStream = context.getResourceAsStream("upload/" + filename);
			if (inStream != null)
				return SUCCESS;
		}
		return ERROR;
	}
}
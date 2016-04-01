package com.action.admin;

import com.dao.NewsDao;
import com.entity.News;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

/**
 * Description: <br/>
 * Copyright(C),2016-2017,Heng.Chen <br/>
 * GitHub:https://github.com/RoaringFlame <br/>
 * Date:2016年3月28日
 * 
 * @author Heng.Chen chenheng120@126.com
 * @version 1.1
 */
public class FlieUpload extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private static final Integer filecolumn = 15;

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	private String uploader;
	// 文件标题
	private String title;
	// 上传文件
	private File upload;
	// 上传文件名
	private String uploadFileName;
	// 获取在struts.xml文件中配置路径
	private String savePath;
	// 获取在struts.xml文件中配置允许上传类型
	private String allowedTypes;
	// 获取在struts.xml文件中配置文件容量最大值
	private String maximumSize;

	public String getUploader() {
		return uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

	public void setSavePath(String value) {
		this.savePath = value;
	}

	private String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitle() {
		return this.title;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public File getUpload() {
		return this.upload;
	}

	public String getAllowedTypes() {
		return allowedTypes;
	}

	public void setAllowedTypes(String allowedTypes) {
		this.allowedTypes = allowedTypes;
	}

	public String getMaximumSize() {
		return maximumSize;
	}

	public void setMaximumSize(String maximumSize) {
		this.maximumSize = maximumSize;
	}

	public void setUploadFileName(String uploadFileName) {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		String newFileName = df.format(new Date()) + "_"
				+ new Random().nextInt(1000)
				+ uploadFileName.substring(uploadFileName.lastIndexOf("."));
		this.uploadFileName = newFileName;
	}

	public String getUploadFileName() {
		return this.uploadFileName;
	}

	public void validate() {
		// 将允许上传文件类型字符串形式以逗号隔开（，）分解成字符串数组，并取得上传文件后缀名进行比较判断
		String[] fileTypes = allowedTypes.split(",");
		String fileExt = uploadFileName.substring(
				uploadFileName.lastIndexOf(".") + 1).toLowerCase();
		if (!Arrays.<String> asList(fileTypes).contains(fileExt)) {
			addFieldError("upload", "上传文件类型不正确！");
		}
		// 判断文件大小是否符合要求
		long maxSize = Integer.parseInt(maximumSize);
		if (upload.length() > maxSize) {
			addFieldError("upload", "上传文件过大（10M之内）！");
		}
	}

	public String execute() throws Exception {
		if (title.equals("")) {
			addActionMessage("请输入标题！");
			return INPUT;
		}
		if (uploader.equals("")) {
			addActionMessage("请输入作者姓名！");
			return INPUT;
		}
		User user = (User) session.getAttribute("user");
		if (user != null) {
			NewsDao nDao = new NewsDao();
			if (nDao.findNews(filecolumn, title) != null) {
				addActionMessage("同名文件已存在！");
				return INPUT;
			}

			// 以服务器的文件保存地址和原文件名建立上传文件输出流
			FileOutputStream fos = new FileOutputStream(getSavePath() + "\\"
					+ getUploadFileName());
			// 定义输出流对象
			FileInputStream fis = new FileInputStream(getUpload());
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) > 0) {
				fos.write(buffer, 0, len);
			}
			fis.close();
			fos.close();

			// 存入文件信息到数据库·
			News news = new News();
			news.setNewsTitle(title);
			news.setNewsColumn(filecolumn);
			news.setLastOperation("上传");
			news.setNewsUploader(this.uploader);
			news.setOperator(user.getUserName());
			Date date = new Date();
			Timestamp timestamp = new Timestamp(date.getTime());
			news.setUploadDate(timestamp);
			news.setReadCount(0);
			news.setFileName(uploadFileName);

			if (nDao.AddNews(news)) {
				
				// 刷新application中对应的list
				ServletContext application = request
						.getServletContext();
				String listname = "list" + filecolumn;
				List<News> newslist = nDao.getColumnList(filecolumn, 1, 7);
				application.setAttribute(listname, newslist);
				
				addActionMessage("上传成功！");
				return SUCCESS;
			}
		}
		addActionMessage("上传失败！");
		return INPUT;
	}
}

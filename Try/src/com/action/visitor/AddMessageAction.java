package com.action.visitor;

import java.sql.Timestamp;
import java.util.Date;

import com.dao.MessageDao;
import com.entity.Message;
import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class AddMessageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String title;
	private String visName;
	private String visTel;
	private String visEmail;
	private String content;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getVisName() {
		return visName;
	}

	public void setVisName(String visName) {
		this.visName = visName;
	}

	public String getVisTel() {
		return visTel;
	}

	public void setVisTel(String visTel) {
		this.visTel = visTel;
	}

	public String getVisEmail() {
		return visEmail;
	}

	public void setVisEmail(String visEmail) {
		this.visEmail = visEmail;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String execute() {
		Message mess = new Message();
		mess.setMessTitle(title);
		mess.setVisName(visName);
		mess.setVisTel(visTel);
		mess.setVisEmail(visEmail);
		mess.setMessContent(content);
		Date date = new Date();
		Timestamp timestamp = new Timestamp(date.getTime());
		mess.setMessDate(timestamp);

		MessageDao mDao = new MessageDao();
		if (mDao.addMessage(mess)) {
			addActionMessage("留言成功");
			return SUCCESS;
		}
		addActionMessage("留言失败");
		return INPUT;
	}
}
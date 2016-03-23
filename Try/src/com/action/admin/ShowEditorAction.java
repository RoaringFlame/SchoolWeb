package com.action.admin;

import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class ShowEditorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String column;

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String execute() {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}
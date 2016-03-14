package com.action.user;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import core.tool.PropertyReader;

public class GetColumnAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	HttpServletRequest request = ServletActionContext.getRequest();
	ServletContext applicatioin = request.getServletContext();
	PropertyReader pr = new PropertyReader();
	 
	private List<Entry<String, String>> lcolumn;
	private List<Entry<String, String>> rcolumn;

	public List<Entry<String, String>> getLcolumn() {
		return lcolumn;
	}

	public void setLcolumn(List<Entry<String, String>> lcolumn) {
		this.lcolumn = lcolumn;
	}

	public List<Entry<String, String>> getRcolumn() {
		return rcolumn;
	}

	public void setRcolumn(List<Entry<String, String>> rcolumn) {
		this.rcolumn = rcolumn;
	}

	@SuppressWarnings("unchecked")
	public String execute() {
		Map<String, String> map = (Map<String, String>)applicatioin.getAttribute("map");
		List<Entry<String, String>> columns = pr.getSortedList(map);
		lcolumn = new ArrayList<Entry<String, String>>();
		rcolumn = new ArrayList<Entry<String, String>>();
		int i = columns.size() / 2;
		int j = 0;
		for (Iterator<Entry<String, String>> iter = columns.iterator(); iter
				.hasNext(); j++) {
			Entry<String, String> str = (Entry<String, String>) iter.next();
			if (j < i) {
				lcolumn.add(str);
			} else {
				rcolumn.add(str);
			}
		}
		return SUCCESS;
	}
}
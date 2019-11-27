package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.testdao;
import com.internousdev.ecsite.dto.testDTO;
import com.opensymphony.xwork2.ActionSupport;

public class test extends ActionSupport implements SessionAware{

	private List<testDTO> itemListTest = new ArrayList<testDTO>();
	private Map<String,Object> session;


	public String execute() throws SQLException{
		testdao testDAO = new testdao();
		itemListTest = testDAO.getItemInfo();

		String result = SUCCESS;
		return result;
	}



	public List<testDTO> getItemListTest() {
		return itemListTest;
	}
	public void setItemListTest(List<testDTO> itemListTest) {
		this.itemListTest = itemListTest;
	}



	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}
	public Map<String,Object> getSession(){
		return session;
	}




}

package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListAction extends ActionSupport implements SessionAware{

	private List<ItemListDTO>itemInfoDTOList = new ArrayList<ItemListDTO>();
	private Map<String,Object>session;

	public String execute() throws SQLException{
		ItemListDAO itemListDAO = new ItemListDAO();
		itemInfoDTOList = itemListDAO.getItemList();

		session.put("ListDelete", itemInfoDTOList);

		if(!(itemInfoDTOList.size() > 0)){
			itemInfoDTOList = null;
		}
		String result = SUCCESS;
		return result;
	}



	public List<ItemListDTO> getItemInfoDTOList() {
		return itemInfoDTOList;
	}
	public void setItemInfoDTOList(List<ItemListDTO> itemInfoDTOList) {
		this.itemInfoDTOList = itemInfoDTOList;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}
	public Map<String,Object>getSession(){
		return session;
	}




}

package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemDeleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport {


	private String message;

	public String execute() throws SQLException{
		String result = ERROR;

		ItemDeleteDAO itemDeleteDAO = new ItemDeleteDAO();
		int res = itemDeleteDAO.itemAllDelete();

		if(res > 0){
			setMessage("商品情報を正しく削除しました。");
		}else if(res == 0){
			setMessage("商品情報の削除に失敗しました。");
		}
		result = SUCCESS;
		return result;
	}


	public String getMessage(){
		return this.message;
	}
	public void setMessage(String message){
		this.message = message;
	}


}

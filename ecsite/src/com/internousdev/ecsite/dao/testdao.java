package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.testDTO;
import com.internousdev.ecsite.util.DBConnector;

public class testdao{

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public List<testDTO>getItemInfo() throws SQLException{


		List<testDTO> itemListTest = new ArrayList<testDTO>();

		String sql = "SELECT * FROM item_info_transaction ORDER BY id";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				testDTO dto = new testDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setItemStock(rs.getString("item_stock"));
				dto.setInsert_date(rs.getString("insert_date"));
				dto.setUpdate_date(rs.getString("update_date"));
				itemListTest.add(dto);
			}

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return itemListTest;
	}



}

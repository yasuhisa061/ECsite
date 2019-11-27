<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>itemList画面</title>
</head>
<body>
	<div id="header">
		</div>
		<div id = "main">
				<div id="top">
					<p>itemList</p>
				</div>
				<div>
					<h3>商品リスト</h3>
					<table border="1">
						<tr>
							<th>id</th>
							<th>商品名</th>
							<th>値段</th>
							<th>在庫</th>
							<th>登録日</th>
							<th>更新日</th>
						</tr>
						<s:iterator value="itemListTest">
							<tr>
								<td><s:property value="id"/></td>
								<td><s:property value="itemName"/></td>
								<td><s:property value="itemPrace"/><span>円</span></td>
								<td><s:property value="itemStock"/><span>個</span></td>
								<td><s:property value="insert_date"/></td>
								<td><s:property value="update_date"/></td>
							</tr>
						</s:iterator>
					</table>
					</div>
				</div>

		<div id="footer">
		</div>

</body>
</html>
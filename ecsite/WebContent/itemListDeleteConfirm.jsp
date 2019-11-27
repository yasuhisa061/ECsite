<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ItemListDeleteConfirm画面</title>
</head>
<body>
<div id="header">
		</div>
		<div id="main">
				<div id="top">
						<p>itemListDelete</p>
				</div>
				<div>

					<h3>以下の商品情報を削除しますがよろしいですか。</h3>
					<table border="1">
						<tr>
							<th>id</th>
							<th>商品名</th>
							<th>値段</th>
							<th>購入個数</th>
							<th>登録日</th>
							<th>更新日</th>
						</tr>
						<s:iterator value="itemInfoDTOList">
							<tr>
								<td><s:property value="id"/></td>
								<td><s:property value="itemName"/></td>
								<td><s:property value="itemPrice"/><span>円</span></td>
								<td><s:property value="itemStock"/><span>個</span></td>
								<td><s:property value="insert_date"/></td>
								<td><s:property value="update_date"/></td>
							</tr>
						</s:iterator>
					</table>
					<s:form action="ItemListDeleteCompleteAction">
							<s:submit value="OK" />
					</s:form>
					<s:form action="ItemListAction">
							<s:submit value="キャンセル"/>
					</s:form>

					</div>

			</div>
			<div id="footer">
			</div>

</body>
</html>
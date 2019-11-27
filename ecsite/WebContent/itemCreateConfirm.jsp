<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>itemCreateConfirm画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>ItemCreateConfirm</p>
		</div>
		<div>
			<s:form action="ItemCreateCompleteAction">
				<table>
					<tr>
						<td>商品名</td>
						<td><s:property value="session.item_name" /></td>
					</tr>
					<tr>
						<td>値段</td>
						<td><s:property value="session.item_price" /><span>円</span></td>
					</tr>
					<tr>
						<td>在庫数</td>
						<td><s:property value="session.item_stock" /><span>個</span></td>
					</tr>
					<tr>
						<td><s:submit value="完了" /></td>
					</tr>
				</table>

			</s:form>
			<s:form action="ItemCreateAction">
				<s:submit value="戻る" />
			</s:form>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>
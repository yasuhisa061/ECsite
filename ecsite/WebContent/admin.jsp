<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>管理者画面</title>
</head>
<body>
	<div id="header">
		</div>
		<div id="main">
				<div id="top">
					<p>admin</p>
				</div>
				<div id="text-center">
					<p>商品</p>
					<s:form action="ItemCreateAction">
						<s:submit value="新規登録"/>
					</s:form>
					<s:form id="itiran_buttam" action="ItemListAction">
						<s:submit value="一覧"/>
					</s:form>
					<s:form id="itiran_buttam" action="test">
						<s:submit value="テスト"/>
					</s:form>
				</div>
			</div>
			<div id="footer">
			</div>

</body>
</html>
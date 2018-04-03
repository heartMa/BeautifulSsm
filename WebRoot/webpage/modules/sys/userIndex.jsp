<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>用户管理</title>
	<meta name="decorator" content="default"/>
	<style type="text/css">
		.ztree {overflow:auto;margin:0;_margin-top:10px;padding:10px 0 0 10px;}
	</style>
</head>
<body>
	<table style="border: 1px solid black">
		<thead>
			<tr>
				<td style="border: 1px solid black">ID</td>
				<td style="border: 1px solid black">登录名</td>
				<td style="border: 1px solid black">工号</td>
				<td style="border: 1px solid black">姓名</td>
				<td style="border: 1px solid black">邮箱</td>
				<td style="border: 1px solid black">电话</td>
				<td style="border: 1px solid black">手机号</td>
				<td style="border: 1px solid black">操作</td>
			</tr>		
		</thead>
		<c:forEach var="user" items="${list}" varStatus="status">
			<tr>
				<td style="border: 1px solid black">${user.id}</td>
				<td style="border: 1px solid black">${user.loginName}</td>
				<td style="border: 1px solid black">${user.no}</td>
				<td style="border: 1px solid black">${user.name}</td>
				<td style="border: 1px solid black">${user.email}</td>
				<td style="border: 1px solid black">${user.phone}</td>
				<td style="border: 1px solid black">${user.mobile}</td>
				<td style="border: 1px solid black"><a href="http://localhost:8881/sys/user/delete?id=${user.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
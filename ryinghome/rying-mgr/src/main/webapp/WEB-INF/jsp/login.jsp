<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理系统</title>
<jsp:include page="baseInput.jsp"></jsp:include>
<script language="javascript">
	$(function() {
		var msg = '${resultMsg}';
		if(msg.length != 0) {
			$.messager.alert('系统提示', msg, 'err');
		}
	});
</script>

</head>

<body>
	<div>
		<form action="${basePath }login.do" method="post">
			<ul>
				<li><input name="username" type="text" class="loginuser" value="请输入用户名" onclick="JavaScript:this.value=''" /></li>
				<li><input name="password" type="text" class="loginpwd" value="请输入密码" onclick="JavaScript:this.value=''" /></li>
				<li><input type="submit" value="登录" /></li>
			</ul>
		</form>
	</div>
</body>
</html>

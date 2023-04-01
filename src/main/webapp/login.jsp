<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
</html>
<%--<script type="text/javascript" src="${pageContext.request.contextPath }/js/login.js"></script>--%>
<body>
<h1 style="text-align: center">登录</h1>

<div style="text-align: center">

	<form method="post" action="${pageContext.request.contextPath}/login">
		用户名：<input type="text" name="username" id="username"> <br>
		密码：<input type="password" name="password" id="password"> <br>

		<input type="submit" id="btn">
	</form>

</div>
<script type="text/javascript">

</script>
</body>
</html>

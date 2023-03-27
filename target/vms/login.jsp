<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
</html>

<body>
<h1 style="text-align: center">登录</h1>

<div style="text-align: center">

	<form method="post" action="${pageContext.request.contextPath}/login">
		<div>${error}</div>
		用户名：<input type="text" name="username"> <br>
		密码：<input type="password" name="password"> <br>

		<input type="submit">
	</form>

</div>

</body>
</html>

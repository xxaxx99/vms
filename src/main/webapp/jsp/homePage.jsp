<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>文档管理</title>
</head>
<style>
    table, th, td {
        border: solid 1px #efefef;
    }
    table {
        width: 100%;
        margin: auto;
        border-collapse: collapse;
        text-align: center;
        border-radius: 6px;
    }
    td,th{
        padding: 10px;
    }
    a {
        text-decoration-line: none;
        color: green;
    }
    a:hover {
        color: brown;
        text-decoration-line: underline;
    }
    tr:first-child {
        background-color: #efefef;
        border-radius: 4px 4px 0 0;
        border-bottom: solid 1px #ddd;
    }
    table caption {
        font-size: 1.5rem;
        font-weight: bolder;
        margin-bottom: 20px;
    }
    p {
        text-align: center;
    }
    /*首页样式*/
    p a:first-child {
        width: 56px;
    }
    p a:last-child {
        width: 56px;
    }
    p a {
        display: inline-block;
        width: 28px;
        height: 24px;
        border: 1px solid green;
        margin-left:2px;
        line-height: 24px;
    }
    /*当前页样式*/
    .active {
        background-color: green;
        color: white;
    }
    .more {
        border: none;
    }
</style>
<body>
<h3>当前位置：文档管理</h3>
<table class="table table-hover text-center">
	<tbody><tr>
		<th width="5%">ID</th>
		<th width="15%">图片</th>
		<th width="35%">名称</th>
		<th width="10%">文章分类</th>
		<th width="15%">更新时间</th>
		<th width="20%">操作</th>
	</tr>
	<tr>
		<td>1</td>
		<td width="10%"><img src="https://img.php.cn/upload/article/000/000/003/5b596217c2850304.jpg" alt="" width="70" height="50"></td>
		<td>这是文章标题</td>
		<td>产品分类</td>
		<td>2018-08-21</td>
		<td><div> <a href=""> 修改</a> <a href=""> 删除</a> </div></td>
	</tr>
	<tr>
		<td>1</td>
		<td width="10%"><img src="https://img.php.cn/upload/article/000/000/003/5b596217c2850304.jpg" alt="" width="70" height="50"></td>
		<td>这是文章标题</td>
		<td>产品分类</td>
		<td>2018-08-21</td>
		<td><div> <a href=""> 修改</a> <a href=""> 删除</a> </div></td>
	</tr>
	<tr>
		<td>1</td>
		<td width="10%"><img src="https://img.php.cn/upload/article/000/000/003/5b596217c2850304.jpg" alt="" width="70" height="50"></td>
		<td>这是文章标题</td>
		<td>产品分类</td>
		<td>2018-08-21</td>
		<td><div> <a href=""> 修改</a> <a href=""> 删除</a> </div></td>
	</tr>
	<tr>
		<td>1</td>
		<td width="10%"><img src="https://img.php.cn/upload/article/000/000/003/5b596217c2850304.jpg" alt="" width="70" height="50"></td>
		<td>这是文章标题</td>
		<td>产品分类</td>
		<td>2018-08-21</td>
		<td><div> <a href=""> 修改</a> <a href=""> 删除</a> </div></td>
	</tr>
	<tr>
		<td>1</td>
		<td width="10%"><img src="https://img.php.cn/upload/article/000/000/003/5b596217c2850304.jpg" alt="" width="70" height="50"></td>
		<td>这是文章标题</td>
		<td>产品分类</td>
		<td>2018-08-21</td>
		<td><div> <a href=""> 修改</a> <a href=""> 删除</a> </div></td>
	</tr>
	<tr>
		<td>1</td>
		<td width="10%"><img src="https://img.php.cn/upload/article/000/000/003/5b596217c2850304.jpg" alt="" width="70" height="50"></td>
		<td>这是文章标题</td>
		<td>产品分类</td>
		<td>2018-08-21</td>
		<td><div> <a href=""> 修改</a> <a href=""> 删除</a> </div></td>
	</tr>
	</tbody></table>
<!--分页-->
<p>
	<a href="">首页</a>
	<a href="" class="active">1</a>
	<a href="">2</a>
	<a href="">3</a>
	<a href="">4</a>
	<a href="" class="more">...</a>
	<a href="">尾页</a>
</p>
</body>
</html>

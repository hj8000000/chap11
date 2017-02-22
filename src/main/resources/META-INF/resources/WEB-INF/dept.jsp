<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>dept.jsp</title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</head>
<body>

<ol>
	<li>color = ${requestScope.data.color}</li>
	<li>backgroundColor = ${data.backgroundColor}</li>
	<li>deptSeoul = ${data.deptSeoul.deptno}, ${data.deptSeoul.dname}, ${data.deptSeoul.loc}</li>
	<li>deptBusan = ${data.deptBusan.deptno}, ${data.deptBusan.dname}, ${data.deptBusan.loc}</li>
	<li>list[0] = ${data.xxx[0]}</li>
	<li>list[1] = ${data.xxx[1].deptno}, ${data.xxx[1].dname}, ${data.xxx[1].loc}</li>
</ol>


</body>
</html>
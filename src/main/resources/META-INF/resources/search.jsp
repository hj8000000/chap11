<%@page import="com.example.domain.Dept"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>search.jsp</title>
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
<c:set var="xxx" value="hello" scope="request"/>
<c:set var="xxx" value="hello world" scope="application"/>

xxx = ${pageScope.xxx}<br>
xxx = ${xxx}<br>

yyy = ${yyy}<br>
yyy = ${yyy==null}<br>
<hr>

<c:set var="current" value="<%=new Date()%>" scope="request"/>

current.year = ${current2.year}<br>
current.year = ${current.year + 1900}<br>
<hr>

<%
	Map<String, String> map = new HashMap<>();
	map.put("color", "black");
	map.put("background", "gold");
	request.setAttribute("mapx", map);

%>

mapx.color = ${mapxx.color}<br>
mapx.color = ${mapx.color}<br>
mapx.color = ${mapx.colorr}<br>
<hr>

<%
	List<String> list = new ArrayList<>();
	list.add("red");
	list.add("blue");

%>
<c:set var="listx" value="<%=list%>" scope="session"/>

list[0] = ${list[0]}<br>
list[1] = ${listx[1]}<br>
<hr>

<%
	Dept d = new Dept();
	d.setDeptno(10);
	d.setDname("총무부");
	d.setLoc("서울");
%>
<c:set var="deptx" value="<%=d%>"/>

deptx.deptno = ${dept.deptno}<br>
deptx.deptno = ${deptx.deptno}<br>

</body>
</html>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>requestScope.jsp</title>
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
<%
	request.setAttribute("one", 1);
	request.setAttribute("two", 4);
	request.setAttribute("three", 5);

%>

one = ${requestScope.one}<br>
two = ${requestScope.two}<br>
three = ${requestScope.three}<br>


<!-- EL이 어떻게 동작하는가! -->
<%
	Map<String, Object> requestScope = new HashMap<>();
	
	Enumeration<String> names = request.getAttributeNames();
	
	while(names.hasMoreElements()) {
		
		String name = names.nextElement();
		Object value = (Object)request.getAttribute(name);
		requestScope.put(name, value);
	}	
%>

one = <%=requestScope.get("one")%><br>
two = <%=requestScope.get("two")%><br>
three = <%=requestScope.get("three")%><br>
four = <%=requestScope.get("four")%><br>
</body>
</html>
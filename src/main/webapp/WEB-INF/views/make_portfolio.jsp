<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String name = request.getParameter("portfolio_name");
    String id = request.getParameter("port_id");
   

    request.setAttribute("port_id", id);
    request.setAttribute("portfolio_name", name);
        
    request.getRequestDispatcher("main.jsp").forward(request, response);
   
%>
</body>
</html>
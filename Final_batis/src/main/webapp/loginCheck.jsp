<%@page import="com.jeong.model.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.jeong.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String cus=request.getParameter("cus");
MemberDAO dao = new MemberDAO();
MemberDTO dto = dao.getMemberById(id);

pageContext.setAttribute("dto", dto);

if(id.equalsIgnoreCase("id")){
	if(pwd.equalsIgnoreCase("pwd")){
		if(cus.equalsIgnoreCase("cus")){
			out.println("<script>alert('관리자 로그인 성공!')");
			out.println("location.href='manager_total.jsp'</script>");	
		}
		else{
			out.println("<script>alert('로그인 성공!')");
			out.println("location.href='index.jsp'</script>");	
		}
	}
	else{
		out.println("<script>alert('로그인 실패!')");
		out.println("location.href='login.jsp'</script>");
	}
}
else{
	out.println("<script>alert('로그인 실패!')");
	out.println("location.href='login.jsp'</script>");
}
%>
<%@page import="com.jeong.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dto" class="com.jeong.model.MemberDTO">
	<jsp:setProperty property="*" name="dto"/>
</jsp:useBean>

<%
MemberDAO dao = new MemberDAO();
int succ = dao.memberUpdate(dto);
if(succ > 0) {
	out.println("<script>alert('수정 성공!');");
	out.println("location.href='index.jsp';</script>");
} else {
	out.println("<script>alert('수정 실패!');");
	out.println("location.href='index.jsp';</script>");
}
%>
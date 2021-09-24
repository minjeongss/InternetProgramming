<%@page import="com.jeong.dao.MemberDAO" %>
<%@page import="com.jeong.util.DBUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dto" class="com.jeong.model.MemberDTO">
	<jsp:setProperty property="*" name="dto"/>
</jsp:useBean>
<%
System.out.println(dto);
MemberDAO dao = new MemberDAO();
int succ = 0;
succ= dao.memberInsert(dto);
if(succ > 0) {
	out.println("<script>alert('가입 성공!')");
	out.println("location.href='index.jsp'</script>");
} else {
	out.println("<script>alert('가입 실패!')");
	out.println("location.href='singUp.jsp'</script>");
}
%>
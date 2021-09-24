<%@page import="com.jeong.dao.BoardDAO" %>
<%@page import="com.jeong.util.DBUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dto" class="com.jeong.model.BoardDTO">
	<jsp:setProperty property="*" name="dto"/>
</jsp:useBean>
<%
System.out.println(dto);
BoardDAO dao = new BoardDAO();
int succ =0;
succ= dao.BoardInsert(dto);
if(succ > 0) {
	out.println("<script>alert('작성 성공!')");
	out.println("location.href='board.jsp'</script>");
} else {
	out.println("<script>alert('작성 실패!')");
	out.println("location.href='board.jsp'</script>");
}
%>
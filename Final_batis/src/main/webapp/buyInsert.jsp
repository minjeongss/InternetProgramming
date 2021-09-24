<%@page import="com.jeong.dao.PerformDAO" %>
<%@page import="com.jeong.util.DBUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dto" class="com.jeong.model.PerformDTO">
	<jsp:setProperty property="seat" name="dto"/>
</jsp:useBean>
<%

PerformDAO dao = new PerformDAO();
String seat=request.getParameter("ticket");
if(seat.equalsIgnoreCase("VIP")){
	int succ=dao.VipSeatUpdate(dto);
	out.println("location.href='buy_list.jsp'</script>");
}
else if(seat.equalsIgnoreCase("R")){
	int succ=dao.RSeatUpdate(dto);
	out.println("location.href='buy_list.jsp'</script>");
}
else if(seat.equalsIgnoreCase("S")){
	int succ=dao.SSeatUpdate(dto);
	out.println("location.href='buy_list.jsp'</script>");
}
else if(seat.equalsIgnoreCase("A")){
	int succ=dao.ASeatUpdate(dto);
	out.println("location.href='buy_list.jsp'</script>");
}

%>
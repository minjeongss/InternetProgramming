<%@page import="com.jeong.model.TicketDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.jeong.dao.TicketDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
TicketDAO dao = new TicketDAO();
List<TicketDTO> list = dao.memberSearchAll();
pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
		.header{
            text-align: center;
            height: 100px;
        }
        .body{
        
        }
        li{
            list-style: none;
        }
        ul{
            margin:40px 0 50px 0;
            padding: 0;
        }
        .logo{
            display: inline-block;
            width: 500px;
            font-size:25px;
            font-weight:bold;
            text-align: left;
        }
        .r{
            display: inline-block;
            width:100px;
            text-align: right;
        }
        a{
        	text-decoration: none;
        	color:black;
        }
        .main{
        text-align:center;
        }
        hr{
        width:1000px;
        }
        table{
         border-collapse: collapse;
         margin-left:auto; 
    	margin-right:auto;
        }
        table,th,td{
        border: 1px solid black;
        }
        th,td{
        	padding:10px;
        }
</style>
</head>
<body>
    <div class="header">
        <ul>
            <li class="logo"><a href="index.jsp">THEAL</a></li>
            <li class="r"><a href="board.jsp">게시판</a></li>
            <li class="r"><a href="buy_list.jsp">예매목록</a></li>
            <li class="r"><a href="info_mem.jsp">계정관리</a></li>
            <li class="r"><a href="log_sig.jsp">로그인<br>&<br>회원가입</a></li>
        </ul>
    </div>
	<div class="main">
		예매목록
		<hr>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작품명</th>
					<th>날짜</th>
					<th>시간</th>
					<th>좌석</th>
				</tr>
			</thead>
			<tbody>
			    <c:forEach var="i" items="${list }">
				<tr align="center">
					<td>${i.id }</td>
					<td>${i.name }</td>
					<td>${i.date }</td>
					<td>${i.time }</td>
					<td>${i.seat }</td>
				</tr>
		</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@page import="com.jeong.model.PerformDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.jeong.dao.PerformDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
PerformDAO dao = new PerformDAO();
List<PerformDTO> list = dao.PerformSearchAll();
pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
function fnDelete(id){
	alert("id : " + id);
	if(confirm("정말 삭제하시겠습니까?")) {
		location.href="performDelete.jsp?id=" + id;
	}
}
</script>
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
        .ticket{
        	font-size:18px;
            font-weight:bold;
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
        hr{
        	width:1000px;
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
		<div class="ticket">공연 목록 삭제</div>
		<hr>
		<table>
			<thead>
				<tr>
					<th>정렬</th>
					<th>공연명</th>
					<th>공연 날짜</th>
					<th>시간대</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
		<c:forEach var="i" items="${list }">
			<tr align="center">
				<td>${i.name }</td>
				<td>${i.date }</td>
				<td>${i.time }</td>
				<td>${i.vip_seat }</td>
				<td>${i.r_seat }</td>
				<td>${i.s_seat }</td>
				<td>${i.a_seat }</td>
				<td><input type="button" value="삭제" onclick="fnDelete('${i.id }')"/></td>
			</tr>
		</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
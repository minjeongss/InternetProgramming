<%@page import="com.jeong.model.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.jeong.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
BoardDAO dao = new BoardDAO();
List<BoardDTO> list = dao.BoardSearchAll();
pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
        .bottom{
        	margin: 5px 0 0 0;
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
		<input type="button" value="글작성" onclick="location.href='board_write.jsp'">
		<br><br>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작품명</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성날짜</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="member" items="${list }">
				<tr>
					<td>"${member.id}"</td>
					<td>"${member.preform_name}"</td>
					<td>"${member.title}"</td>
					<td>"${member.user_name}"</td>
					<td>"${member.date}"</td>
			    </tr>
			 </c:forEach>
				
			</tbody>
		</table>
		<div class="bottom">
			<a>1</a> | <a>2</a> | <a>3</a> | <a>4</a> | <a>5</a>
		</div>
	</div>
		
</body>
</html>
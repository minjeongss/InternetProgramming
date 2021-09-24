<%@page import="com.jeong.model.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.jeong.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
MemberDAO dao = new MemberDAO();
MemberDTO dto = dao.getMemberById(id);
pageContext.setAttribute("dto", dto);
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
        .info_mem{
        font-size:20px;
        font-weight:bold;
        }
        .big{
        	width:1000px;
        }
        hr{
        	width:300px;
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
		<div class="info_mem">계정 관리</div>
		<hr class="big">
		<div>
			<div>이름(실명): ${dto.name }</div>
			<hr>
			<div>전화번호: ${dto.phone }</div>
			<hr>
			<div>아이디: ${dto.id }</div>
			<hr>
			<div>비밀번호: ${dto.pwd }</div>
			<hr>
			<div>
				<input type="button" value="정보 수정" onclick="location.href='memberDetail.jsp?id=${i.id}'">
				<input type="button" value="회원 탈퇴" onclick="fnDelete('${i.id }')">
			</div>
		</div>
	</div>
</body>
</html>
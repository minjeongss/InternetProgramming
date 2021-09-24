<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
        .manager{
        	font-size:20px;
        	font-weight: bold;
        }
        hr{
        	width:1000px;
        }
        a{
        text-decoration: none;
        color:black;
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
		<div class="manager">관리자 기능 모음</div>
		<hr>
		<div><a href="manager_ticketAdd.jsp">1. 공연 목록에 추가</a></div>
		<hr>
		<div><a href="manager_ticketDelete.jsp">2. 공연 목록에서 삭제</a></div>
		<hr>
		<div><a href="manager_mem.jsp">3. 회원 관리</a></div>
		<hr>
	</div>
</body>
</html>
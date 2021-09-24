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
        hr{
        	width:1000px;
        }
        .sign{
        	font-size:18px;
            font-weight:bold;
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
	<form action="memberInsert.jsp" method="post">
		<div class="sign">회원가입</div>
			<hr>
			<div class="name">
				이름(실명):&nbsp;<input type="text" name="name">
			</div>
			<br>
			<div class="phone">
				전화번호:&nbsp;<input type="text" name="phone">
			</div>
			<br>
			<div class="id">
				ID:&nbsp;<input type="text" name="id">
			</div>
			<br>
			<div class="pwd">
				PassWord:&nbsp;<input type="text" name="pwd">
			</div>
			<br>
	
			<br>
			<input type="submit" value="고객 회원가입">
	</form>
	</div>
</body>
</html>
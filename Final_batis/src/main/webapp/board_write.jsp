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
        .write{
        	font-size:18px;
            font-weight:bold;
        }
        hr{
        	width:1000px;
        }
        textarea{
        	width:500px;
        	height:400px;
        	padding:5px;
        	resize:none;
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
	<form action="board.jsp" method="post">
	<div class="main">
		<div class="write">글 작성</div>
			<hr>
			<div class="name">
				공연 이름:&nbsp;<input type="text" size="35" name="perform_name">
			</div>
			<br>
			<div class="title">
				제목:&nbsp;<input type="text" size="40" name="title">
			</div>
			<br>
			<div class="content">
				내용:
				<br><textarea rows="40" cols="20" name="content"></textarea>
			</div>
			<br>
			<input type="submit" value="완료">
	</div>
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
        hr{
        width:1000px;
        }
        .left{
        margin: 5px 0 10px 0;
        }
        .bottom{
        margin: 30px 0 0 0;
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
	 	선택하신 뮤지컬의 좌석 예매
	 	<hr>
	 	<br>
	 	<form action="buyInsert.jsp" method="post">
	 	<div class="left">
			  <input type="radio" id="VIP" name="ticket" value="VIP" checked>
			  <label for="VIP">VIP석</label>
			<br>
			  <input type="radio" id="R" name="ticket" value="R">
			  <label for="R">R석</label>
			<br>
			  <input type="radio" id="S" name="ticket" value="S">
			  <label for="S">S석</label>
			<br>
			<input type="radio" id="A" name="ticket" value="A">
			  <label for="A">A석</label>
			<br>
	 	</div>
	 	<div class="right">
	 		날짜와 시간
	 		: 2021-06-04 | 15:00
	 	</div>
	 	<br>
	 	<div class="bottom">
	 		<input type="submit" value="구매하기">
	 	</div>
	 	</form>
	 </div>   
</body>
</html>
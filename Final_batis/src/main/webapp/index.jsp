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
        .one{

        }
        img{
        	margin:20px;
        	width:200px;
        	height:300px
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
	    <div class="one">
	    	<a href="content.jsp">
	        <img src="img/mu_commat.jpg"></a>
	        <a href="content.jsp">
	    	<img src="img/mu_cyrano.jpg"></a>
	    	<a href="content.jsp">
	    	<img src="img/mu_pen.jpg"></a>
	    	<a href="content.jsp">
	    	<img src="img/mu_raman.gif"></a>
	    </div>
	    <div>
	    	<a href="content.jsp">
	    	<img src="img/mu_pen.jpg"></a>
	    	<a href="content.jsp">
	    	<img src="img/mu_raman.gif"></a>
	    	<a href="content.jsp">
	    	<img src="img/mu_rebeca.gif"></a>
	    	<a href="content.jsp">
	    	<img src="img/mu_wicked.jpg"></a>
	    </div>
    </div>
</body>
</html>
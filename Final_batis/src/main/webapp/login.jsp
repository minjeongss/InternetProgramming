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
        .log{
        	font-size:18px;
            font-weight:bold;
        }
        hr{
        	width:500px;
        }
		.i{
			background-color:rgb(102,153,102);
		}
</style>
</head>
<body>
    <div class="header">
        <ul>
            <li class="logo"><a href="index.jsp">THEAL</a></li>
            <li class="r"><a href="board.jsp">�Խ���</a></li>
            <li class="r"><a href="buy_list.jsp">���Ÿ��</a></li>
            <li class="r"><a href="info_mem.jsp">��������</a></li>
            <li class="r"><a href="log_sig.jsp">�α���<br>&<br>ȸ������</a></li>
        </ul>
    </div>
	<div class="main">
		<div class="log">�α���</div>
		<hr>
	<form action="loginCheck.jsp" method="post">
		<div>
			<input type="checkbox" name="cus">���Դϴ�.
		</div>
		<div class="id">
			ID:&nbsp;<input type="text" name="id" class="i">
		</div>
		<div class="pwd">
			PassWord:&nbsp;<input type="text" name="pwd" class="i">
		</div>
		<br>
		
		<input type="submit" value="�α���">
	</form>
	</div>
</body>
</html>
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
            <li class="r"><a href="board.jsp">�Խ���</a></li>
            <li class="r"><a href="buy_list.jsp">���Ÿ��</a></li>
            <li class="r"><a href="info_mem.jsp">��������</a></li>
            <li class="r"><a href="log_sig.jsp">�α���<br>&<br>ȸ������</a></li>
        </ul>
    </div>
	<div class="main">
		<div class="manager">������ ��� ����</div>
		<hr>
		<div><a href="manager_ticketAdd.jsp">1. ���� ��Ͽ� �߰�</a></div>
		<hr>
		<div><a href="manager_ticketDelete.jsp">2. ���� ��Ͽ��� ����</a></div>
		<hr>
		<div><a href="manager_mem.jsp">3. ȸ�� ����</a></div>
		<hr>
	</div>
</body>
</html>
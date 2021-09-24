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
        img{
        	width:300px;
        }
        .up{
        text-align:center;
        }
        .name{
        font-weight:bold;
        font-size:18px;
        }
        .down{
        margin:50px 0 0 0;
        text-align:center;
        align:center;
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
        .buy{
         margin:50px 0 0 0;
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
	    <div class="info">
		    <div class="up">
		    	<span class="name">[������] �ҷ���</span>
		    	<br>
		    	<img src="img/mu_pen.jpg">
		    </div>
		    <div class="down">
		    **�ش� �����ÿ� ���� ������ �ȳ��մϴ�**
		    <br><br>
		    <table>
		    			<tr>
		    				<th>�¼��� ����</th>
		    				<th>�ش� �¼��� Ƽ�� ����</th>
		    			</tr>
		    			<tr>
		    				<td>VIP��</td>
		    				<td>140,000</td>
		    			</tr>
		    			<tr>
		    				<td>R��</td>
		    				<td>100,000</td>
		    			</tr>
		    			<tr>
		    				<td>S��</td>
		    				<td>80,000</td>
		    			</tr>
		    			<tr>
		    				<td>A��</td>
		    				<td>60,000</td>
		    			</tr>
		    </table>
		    <br>
		    ��¥: 2021-06-04 | �ð�: 15:00
		    </div>
	    </div>
	    <div class="buy">
	    <input type="button" value="�����ϱ�" onclick="location.href='buy.jsp'">
	    </div>
    </div>
</body>
</html>
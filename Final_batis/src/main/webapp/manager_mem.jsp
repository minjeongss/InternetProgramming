<%@page import="com.jeong.model.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.jeong.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
MemberDAO dao = new MemberDAO();
List<MemberDTO> list = dao.memberSearchAll();
pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function fnDelete(id){
	alert("id : " + id);
	if(confirm("정말 삭제하시겠습니까?")) {
		location.href="memberDelete.jsp?id=" + id;
	}
}
</script>
<style>
@font-face {
    font-family: 'NEXON Lv1 Gothic OTF';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
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
        .ticket{
        	font-size:18px;
            font-weight:bold;
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
        hr{
        	width:1000px;
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
		<div class="ticket">회원 관리</div>
		<hr>
		<table>
			<thead class="table table-striped">
				<tr>
					<th>정렬</th>
					<th>이름(실명)</th>
					<th>전화번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>정보수정 및 삭제</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach var="i" items="${list }">
			<tr align="center">
				<td>${i.name }</td>
				<td>${i.phone }</td>
				<td>${i.id }</td>
				<td>${i.pwd }</td>
				<td><input type="button" value="삭제" onclick="fnDelete('${i.id }')"/></td>
				<td><input type="button" value="수정" onclick="location.href='memberDetail.jsp?id=${i.id}'"/></td>
			</tr>
		</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
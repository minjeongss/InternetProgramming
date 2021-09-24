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
<title>전체 회원 목록 조회</title>
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
</style>
<script type="text/javascript">
function fnDelete(id){
	//alert("id : " + id);
	if(confirm("정말 삭제하시겠습니까?")) {
		location.href="memberDelete.jsp?id=" + id;
		//Get 방식으로 정보를 넘길때 띄어쓰기 안하게 주의할 것
	}
}
</script>
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
<div align="center">
	<h3>전체 회원 목록 조회</h3>
	<table border="1" width="80%">
		<tr>
			<th>이름</th>
			<th>전화번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>삭제</th>
			<th>수정</th>
		</tr>
		<c:forEach var="i" items="${list }">
			<tr align="center">
				<td>${i.name }</td>
				<td>${i.phone }</td>
				<td>${i.id }</td>
				<td>${i.pwd }</td>
				<td><input type="button" value="삭제" onclick="fnDelete('${i.id }')"/></td>
				<!-- id값을 넘길때 따옴표로 묶어줘야 문자를 입력해도 오류가 안난다. -->
				<td><input type="button" value="수정" onclick="location.href='memberDetail.jsp?id=${i.id}'"/></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
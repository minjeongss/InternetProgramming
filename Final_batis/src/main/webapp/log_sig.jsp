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
        	padding:50px;
        	margin:50px;
        	width:100px;
            height:100px;
            display: inline-block;
            text-align:center;
            border-radius: 25px;
            background-color: rgb(89, 128, 89);
        }
        .sig{
        	padding:50px;
        	margin:50px;
        	width:100px;
            height:100px;
            display: inline-block;
            text-align:center;
            border-radius: 25px;
            background-color: rgb(89, 128, 89);
        }
        .footer{
			 margin-top: 100px;
			 height:200px;
			 text-align: center;
		}
		.theal{
		font-weight:bold;
		}
		.information{
		  padding-right:10px;
		}
        .copy{
        	color:#7F7F7F;
		  	padding-left:10px;
		  	padding-top: 5px;
	  	}
	  	.i{
	  		text-decoration:none;
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
    <div class="body">
        <ul>
            <li class="log"><a class="i" href="login.jsp">로그인</a></li>
            <li class="sig"><a class="i" href="signUp.jsp">회원가입</a></li>
        </ul>
    </div>
    <div class="footer">
            <div class="theal">(주)THEAL</div>
            <div class="information">
              <div class="date"> : 뮤지컬 티켓팅 및 소통의 공간</div>
              <div class="member">
                <div class="member-person"> 대표: 김민정</div>
                <div class="member-person"> 이메일: kkk@naver.com | 전화번호: 010-0000-0000</div>
              </div>
            </div>
          <div class="copy">Copyright &copy; THEAL</div>
     </div>
</body>
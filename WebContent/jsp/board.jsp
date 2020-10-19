<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">

</head>
<style>
      .banner {position: relative; width: 900px; height: 300px; top: 0px; bottom: 20px;  margin:0 auto; padding:0; overflow: hidden;}
	.banner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
	.banner ul li {float: left; width: 900px; height: 300px; margin:0; padding:0;}

ul #nav{
    list-style-type: none;
    margin: 0;
    padding: 0;
    background-color: #333;
}
ul:after{
    content:'';
    display: block;
    clear:both;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}
li a:hover:not(.active) {
    background-color: #111;
}
   #nav{
    text-align:center;
   }
       
   #nav li{
       display: inline-block;
   }
   h1{
       margin: 1px;
   }
  
    table{

        width: 80%;
    }

</style>
<body>
	<div id="wrap" align="center">
        <div class="header"> 
            <center>
            <h1>Pet Sitter(</h1>
            </center>
           
            <ul id="nav">
              <li><a href="">서비스보기</a>
              </li>
              <li><a href="">서비스제공</a>
              </li>
              <li><a href="">인증게시판</a>
              </li>
              <li><a href="">자유게시판</a>
              </li>
            </ul>
        </div>
        <div>
            <section id="img">
                <div class="banner">
                    <ul>
    
                        <li> <img src="./img/animals-2.jpg" width="100%"height="300px"></li>
                    </ul>
                </div>
            </section>
        </div>
		<h2>ì¸ì¦ ê²ìê¸</h1>
		<table class="list" >
			<tr>
				<td colspan="2" style="border: white; text-align: left">접속자 :</td>
				<td colspan="3" style="border: white; text-align: right"><a
					href="BoardServlet?command=board_write_form">게시글 등록</a></td>
			</tr>
			<tr>
				<th width="10%" align=center>번호</th>
				<th width="50%" align=center>제목</th>
				<th width="15%" align=center>작성자</th>
				<th width="15%" align=center>작성일</th>
				<th width="10%" align=center>조회</th>
			</tr>
			
			<tr>
				<td colspan=5 align=center>
					<hr>
					
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
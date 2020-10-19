<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<link rel="canonical" href="https://www.daangn.com/" />

<title>메뉴판</title>

<link rel="stylesheet" media="all"
	href="https://d1unjqcospf8gs.cloudfront.net/assets/home/base-3cc07df3ddf88513bc6d21c2bfda66dc468dd04a3f612d5d590feaf2b453e0de.css" />
<script
	src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base-d5f8bd2e2e6729d4f86324f85bbdb9a5c6bafeff1957b761a1187ae9c7d773b8.js"></script>

<link rel="apple-touch-icon" sizes="192x192"
	href="/images/icons/daangn_logo_192.png">
<script type="text/javascript" src="/test/testScript.js"></script>
<style>
.banner {
	position: relative;
	width: 900px;
	height: 300px;
	top: 0px;
	bottom: 20px;
	margin: 0 auto;
	padding: 0;
	overflow: hidden;
}

.banner ul {
	position: absolute;
	margin: 0px;
	padding: 0;
	list-style: none;
}

.banner ul li {
	float: left;
	width: 900px;
	height: 300px;
	margin: 0;
	padding: 0;
}

ul #nav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	background-color: #333;
}

ul:after {
	content: '';
	display: block;
	clear: both;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
}

li a:hover:not (.active ) {
	background-color: white;
}

.active {
	background-color: #4CAF50;
}

#nav {
	text-align: center;
}

#nav li {
	display: inline-block;
}

h1 {
	margin: 1px;
}

#log ul li {
	float: left;
	margin: 10px;
	list-style-type: none;
}

#log ul li input {
	background-color: rgb(219, 228, 142);
	padding: 3px;
}

#logbox {
	padding: 0px;
	margin: 0px 50px 0px;
	float: right;
}

#log {
	margin: 0px;
	padding: 5px;
	height: 0px;
	width: 100%;
}

#nav a {
	color: black;
}
</style>
<script language="JavaScript">
	$(document).ready(
			function() {
				var $banner = $(".banner").find("ul");

				var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
				var $bannerHeight = $banner.children().outerHeight(); // 높이
				var $length = $banner.children().length;//이미지의 갯수
				var rollingId;

				//정해진 초마다 함수 실행
				rollingId = setInterval(function() {
					rollingStart();
				}, 3000);//다음 이미지로 롤링 애니메이션 할 시간차

				function rollingStart() {
					$banner.css("width", $bannerWidth * $length + "px");
					$banner.css("height", $bannerHeight + "px");
					//alert(bannerHeight);
					//배너의 좌측 위치를 옮겨 준다.
					$banner.animate({
						left : -$bannerWidth + "px"
					}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
						//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
						$(this).append(
								"<li>" + $(this).find("li:first").html()
										+ "</li>");
						//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
						$(this).find("li:first").remove();
						//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
						$(this).css("left", 0);
						//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
					});
				}
			});
//-->
</script>

</head>

<body class="hoian-kr">
	<div class="header">
		<center>
			<h1>애견생활</h1>
		</center>
		<aside id="log">
			<div id="logbox">
				<ul>
					<li><input type="button"
						onClick="location.href='BoardServlet?command=login_form'"
						value="로 그 인 하 기"></a></li>
					<li><input type="button" value="회원가입하기"
						onClick="location.href='#'"></li>
				</ul>
			</div>
		</aside>
		<ul id="nav">
			<li><a href="">서비스보기</a></li>
			<li><a href="">서비스제공</a></li>
			<li><a href="">인증게시판</a></li>
			<li><a href="">자유게시판</a></li>
		</ul>
	</div>
	<div>
		<section id="img">
			<div class="banner">
				<ul>

					<li><img src="./img/animals-2.jpg" width="100%" height="300px"></li>
					<li><img src="./img/dog-1.jpg" width="100%" height="300px"></li>
					<li><img src="./img/dog-2.jpg" width="100%" height="300px"></li>
					<li><img src="./img/dog-3.jpg" width="100%" height="300px"></li>
				</ul>
			</div>
		</section>
	</div>

	<div class="title-line-divider"></div>
	<section class="cards-wrap">
	
	<c:forEach var="slist" items="${serviceList}" begin="0" end="7" >
		<article class="card-top ">
			<a class="card-link " data-event-label="86585376"
				href="/articles/86585376">
				<div class="card-photo">
				<img alt="${slist.servicewhar}" src="${srcList[0]}">
				</div>
				<div class="card-desc">
					<h2 class="card-title">${slist.area}</h2>
					<div class="card-region-name">${slist.sdate}</div>
					<div class="card-price ">${slist.stime}</div>
					<div class="card-counts">
						<span> 조회수 5 </span> ∙ <span> 4 </span>
					</div>
				</div>
			</a>
		</article>
		</c:forEach>
		
	</section>


	<footer id="footer">
		<ul class="footer-list" id="footer-address-list">
			<li class="footer-list-item">사업자 등록번호 : 375-87-00088</li>
			<li class="footer-list-item">
				<address>서울특별시 서초구 서초대로 396 강남빌딩 17층 1707호</address>
			</li>
			<li class="footer-list-item">
				<p>고객문의 : cs@daangnservice.com</p>
			</li>
		</ul>
	</footer>
</body>

</html>
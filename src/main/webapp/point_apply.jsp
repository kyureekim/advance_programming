<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Elements - Editorial by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="assets/css/org.css " />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">
<%
  String Oid =null;
	if (session.getAttribute("Oid") != null){
		Oid = (String)session.getAttribute("Oid");
	}
  %>
<!-- Wrapper -->
<div id="wrapper">
    <!-- Main -->
    <div id="main">
        <div class="inner">
            <!-- Header -->
            <header id="header">
                <h2>포인트 등록</h2>
                <ul class="icons">
            <% 
            	if (Oid == null){
            %>
              <li>
                <a href="login_org.jsp"><span class="label">Login</span></a>
              </li>
              <%
            	} else {
              %>
              <li>
                <a href="logout_service.jsp"><span class="label">Logout</span></a>
              </li>
              <%
            	}
              %>
                </ul>
            </header>

            <!-- Content -->
            <section>
                <!-- Content -->
                <h2 id="content">필요한 포인트를 입력해주세요.</h2>
                <form method="post" action="point_apply_service.jsp">
                    <div>
                        <div class="col-3 col-12-large product">
                            <h3>포인트</h3>
                            <input
                                    type="text"
                                    name="point"
                                    id="point"
                                    placeholder="필요한 포인트를 입력하세요."
                            />
                        </div>
                        <div class="col-3 col-12-large amount">
                            <h3>구매할 물품</h3>
                            <input
                                    type="text"
                                    name="pointproduct"
                                    id="pointproduct"
                                    placeholder="몰에서 구매예정인 물품을 쉼표를 단위로 적어주세요. 예) 칫솔 10개, 치약 50개"
                            />
                        </div>
                    </div>
                    <div class="success-btn">
                        <input type="submit" value="등록완료" class="button large" />
                    </div>
                </form>
            </section>
        </div>
    </div>

    <div id="sidebar">
        <div class="inner">
            <!-- Menu -->
            <nav id="menu">
                <header class="major">
                    <h2>플랫폼 이름</h2>
                </header>
                <ul>
                    <h3>**아동복지센터님 환영합니다</h3>
                    <li><a href="/index.jsp">Homepage</a></li>
                    <li><a href="product_show.jsp">기부받기</a></li>
                    <li>
                        <a href="/org_mypage.jsp" class="opener">마이페이지</a>
                        <ul>
                            <li><a href="/org_mypage.jsp#myInfo">개인정보</a></li>
                            <li><a href="/org_mypage.jsp#orgPoint">포인트</a></li>
                            <li>
                                <a href="/org_mypage.jsp#orgUsedPoint">포인트 사용내역</a>
                            </li>
                            <li>
                                <a href="/org_mypage.jsp#orgProduct">물품 기부내역</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <!-- Section -->
            <section>
                <header class="major">
                    <h2>Get in touch</h2>
                </header>
                <p>기부플랫폼 소개</p>
                <ul class="contact">
                    <li class="icon solid fa-envelope">
                        <a href="#">이메일</a>
                    </li>
                    <li class="icon solid fa-phone">전화번호</li>
                    <li class="icon solid fa-home">
                        주소<br />
                        상세주소
                    </li>
                </ul>
            </section>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>투명한 기부</title>
    <link rel="stylesheet" href="assets/css/main.css" />
  </head>
  <body class="is-preload">
    <!--Wrapper-->
    <div id="wrapper">
      <div id="main">
        <div class="inner">
          <header id="header">
            <h2>서류 작성하기</h2>
            <ul class="icons">
              <li>
                <a href="login_org.jsp"><span class="label">Login</span></a>
              </li>
              <li>
                <a href="login_org.jsp"><span class="label">Logout</span></a>
              </li>
            </ul>
          </header>

          <!--Content-->
          <section>
            <div>작성하신 서류는 사용자에게 공개됩니다.</div>
            <br />
            <div class="col-6 col-12-small">
              <form>
                <div class="box">
                  <h2>공유서류</h2>
                  <p>date : 2021.5.10</p>
                  <input type="file" name="fileName" />
                </div>
                <div class="box">
                  <h2>사유서</h2>
                  <p>date : 2021.5.10</p>
                  <textarea
                  placeholder="사유를 작성해주세요."></textarea>
                </div>
                <button
                  type="submit"
                  id="fileSubmit"
                  name="fileSubmit"
                  style="float: right; margin-right: 10px"
                >
                  서류등록
                </button>
              </form>
            </div>
          </section>
        </div>
      </div>

      <!-- Sidebar -->
      <div id="sidebar">
        <div class="inner">
          <!-- Menu -->
          <nav id="menu">
            <header class="major">
              <h2>플랫폼 이름</h2>
            </header>
            <ul>
              <h3>**아동복지센터님 환영합니다</h3>
              <li><a href="generic.html">Homepage</a></li>
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
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
              <li>
                <span class="opener">메뉴</span>
                <ul>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                </ul>
              </li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
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

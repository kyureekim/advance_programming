<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="org.orgDAO" %>
<!DOCTYPE html>
<html>
  <head>
    <title>투명한 기부</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/range.css" />
  </head>
  <body class="is-preload">
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Main -->
      <div id="main">
        <div class="inner">
          <!-- Header -->
          <header id="header">
            <h2><a href="viewCorp2.jsp">후기 작성하기</a></h2>
            <ul class="icons">
              <li>
                <a href="login.html"><span class="label">Login</span></a>
              </li>
              <li>
                <a href="login.html"><span class="label">Logout</span></a>
              </li>
            </ul>
          </header>
          <section>
            <!-- Content -->
            <!-- <h2 id="content">{치약} 구매하기</h2> -->
            <div class="row">
              <div class="col-6 col-12-small">
                <img src="images/pic02.jpg" alt="" />
              </div>
              <div class="col-6 col-12-large">
                <form name="review" method="post" action="">
                  <div class="slidecontainer">
                    <input
                      type="range"
                      min="0"
                      max="50"
                      value="36.5"
                      class="slider"
                      id="myRange"
                      step="0.5"
                    />
                    <p>***복지 센터의 온도: <span id="demo"></span>도</p>
                  </div>
                  <textarea
                    name="demo-message"
                    id="demo-message"
                    placeholder="솔직한 후기를 작성해주세요"
                    rows="6"
                  ></textarea>
                  <br><input type="submit" />
                </form>
              </div>
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
              <h2><a href="index.jsp">~~~~ donation</a></h2>
            </header>
            <ul>
              <li>
                <span class="opener">MY PAGE</span>
                <ul>
                  <li><a href="#">회원정보 조회</a></li>
                  <li><a href="#">포인트 적립</a></li>
                  <li><a href="#">재능 등록</a></li>
                  <li><a href="#">공유 서류 조회</a></li>
                </ul>
              </li>
              <li><a href="viewCorp2.jsp">기부 하기</a></li>
              <li><a href="review.jsp">기부 후기</a></li>
            </ul>
          </nav>

          <section>
            <header class="major">
              <h2>Get in touch</h2>
            </header>
            <ul class="contact">
              <li class="icon solid fa-envelope">
                <a href="#">tangerinelove@naver.com</a>
              </li>
              <li class="icon solid fa-phone">(+82) 10-3116-7130</li>
              <li class="icon solid fa-home">
                30, Pildong-ro 1-gil, Jung-gu<br />
                Seoul, Republic of Korea
              </li>
            </ul>
          </section>
          <!-- Footer -->
        </div>
      </div>
    </div>

    <!-- Scripts -->
    <script>
      var slider = document.getElementById("myRange");
      var output = document.getElementById("demo");
      output.innerHTML = slider.value;
      slider.oninput = function () {
        output.innerHTML = this.value;
      };
    </script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>
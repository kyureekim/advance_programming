<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Editorial by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>투명한 기부</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
	  <script type="text/javascript">
		function button_event(){

				if (confirm("기부하고 후기를 작성하시겠어요?") == true){    //확인

    							document.location.href="reviewing.jsp";

					}else{   //취소

    					return;

					}

		}

	</script>
   </head>
   <body class="is-preload">

      <!-- Wrapper -->
         <div id="wrapper">
            <!-- Main -->
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
                        <header id="header">
                           <h2><a href="viewCorp2.jsp">기부 물품 결제하기</a></h2>
                           <ul class="icons">
                              <li><a href="login.html"><span class="label">Login</span></a></li>
                              <li><a href="login.html"><span class="label">Logout</span></a></li>
                           </ul>
                           
                        </header>

         <!-- Section -->
          <section>
            <header class="main">               
            </header>
            
            
            <div class="corpInfo" style="padding:15px; height: auto; width: 100%; border:3px solid #f56a6a; border-radius:3%">
               <h3><br/>"단체명"<br/></h3>
               
               <div class="aboutCorp">
                  <div class="form-group col-sm-6">
                     <div class="image" style="font-size:20px">
                        <img src="images/vol1.jpg" alt="" align="left">우리단체는 아이를 사랑하는 보육원으로서 <br>아이들의 행복한 미래를 지원합니다.<br clear="left">
                     </div>
                    </div>
               </div>                          
               
               <div class="checkStuffs">
                  <h4><br>기부를 원하는 물품을 선택해주세요</h4>                              
                     <input type="checkbox" id="product">
                       <label for="product">옷 10벌</label>  
                    <input type="checkbox" id="2">
                     <label for="2">기저귀 10개</label>  
                     <input type="checkbox" id="3">
                     <label for="3">화장지 100개</label>  
                     <input type="checkbox" id="4">
                     <label for="4">물티슈 20개</label>
              </div> 
              <div>
              	<input type="checkbox" id="5">
                     <label for="5">포인트20000점(샴푸40개와 냉동푸트100개를 구입할 예정입니다.)</label>
              </div> 
              
              <div>
              	<br>
              	<h4>사람들이 작성한 후기글<br>: (후기작성에서 받은 후기 뿌려줄 곳)</h4>
              </div>                
  
            <div style="text-align: right;">
            <a href="#" onclick=button_event()>
            <button class="button primary large">
            	결제하기  
             </button></a>
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
                              <li><span class="opener">MY PAGE</span>
                                 <ul>
                                    <li><a href="#">회원정보 조회</a></li>
                                    <li><a href="#">포인트 적립</a></li>
                                    <li><a href="#">재능 등록</a></li>
                                    <li><a href="#">공유 서류 조회</a></li>
                                 </ul></li>                              
                              <li><a href="viewCorp2.jsp">기부 하기</a></li>
                              <li><a href="review.jsp">기부 후기</a></li>
                           </ul>
                        </nav>

                        <section>
                           <header class="major">
                              <h2>Get in touch</h2>
                           </header>
                           <ul class="contact">
                              <li class="icon solid fa-envelope"><a href="#">tangerinelove@naver.com</a></li>
                              <li class="icon solid fa-phone">(+82) 10-3116-7130</li>
                              <li class="icon solid fa-home">30, Pildong-ro 1-gil, Jung-gu<br />
                              Seoul, Republic of Korea</li>
                           </ul>
                        </section>
                     <!-- Footer -->
                  </div>
               </div>
               </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
            <script src="assets/js/apply.js"></script>
   </body>
</html>
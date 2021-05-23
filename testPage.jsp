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
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
       <script>
        function modal_start(id) {
        	var CorpName =id;
        	document.getElementById('CorpName').innerHTML = CorpName; //변수넘길거
            $('.fade').animate({opacity: '1'}, 1000);
            $('.modal').css('display','block');
        }
        function modal_close() {
            $('.fade').animate({opacity: '0'}, 1000);
            $('.modal').css('display','none');
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
									<a href="index.html" class="logo"><strong>기부</strong> &nbsp'나만의 투명한 기부 참여'</a>
									<ul class="icons">
										<li><a href="login.html"><span class="label">Login</span></a></li>
										<li><a href="login.html"><span class="label">Logout</span></a></li>
									</ul>
									
								</header>


							<!-- Banner -->
								<section id="banner">
									<div class="row">
										<div class="col-12 col-2-medium">
											<h4>기부가 필요한 단체 목록</h4>
											<section id="banner">
                        						<div class="table-wrapper">
                        							<table>
                        								<tr>
                        									<td><img onclick="modal_start(this.id)" src="./images/pic06.jpg" width="200" alt="" id="단체1" /></td>
                        									<td><img onclick="modal_start(this.id)" src="./images/pic07.jpg" width="200" alt="" id="단체2" /></td>
                       									 	<td><img onclick="modal_start(this.id)" src="./images/pic05.jpg" width="200" alt="" id="단체3" /></td>
                        							   </tr>
                        
                        							   <tr>
                        									<td>1번 단체</td>
                        									<td>2번 단체</td>
                        									<td>3번 단체</td>
                        							   </tr>
                        
                       	 							  <tr>
                        									<td><img onclick="modal_start(this.id)" src="./images/pic07.jpg" width="200" alt="" id="Corp4" /></td>
                       									    <td><img onclick="modal_start(this.id)" src="./images/pic07.jpg" width="200" alt="" id="Corp5"/></td>
                        									<td><img onclick="modal_start(this.id)" src="./images/pic07.jpg" width="200" alt="" id="Corp6"/></td>
                        							 </tr>
                        
                        							<tr>
                        									<td>4번 단체</td>
                        									<td>5번 단체</td>
                        								<td>6번 단체</td>
                        						   </tr>
                        			 		   </table>                        
                                           </div>
                        				</section>
										</div>																						
									</div>
								</section>								
			

							    <div class="modal fade" id="layerpop" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true" >
								    <div class="modal-dialog">
								        <div class="modal-content">
								        	<div class="modal-header">
								        		<h5 class="modal-title" id="modal">기부바구니</h5>
								        		<button type="button" onclick="modal_close();" class="close" data-dismiss="modal" aria-label="Close">
								        			<span>&times;</span>
								        		</button>
								        	</div>
								        	<div class="modal-body">
								        		<form action="./바디내의 내용을 전달할 jsp페이지.jsp" method="post">
								        			<div class="form-row">
								        				<div class="form-group col-sm-6">
								        					<h6 id="CorpName"></h6>
								        					<img src="./images/pic07.jpg" width="200"/>
								        				</div>
								        				<div class="form-group col-sm-6">
								        				<br/>
								        					<div class="form-check form-check-inline">
															  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
															  <label class="form-check-label" for="inlineCheckbox1">기저귀</label>
															</div>
															<div class="form-check form-check-inline">
															  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
															  <label class="form-check-label" for="inlineCheckbox2">젓가락</label>
															</div>
															<div class="form-check form-check-inline">
															  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
															  <label class="form-check-label" for="inlineCheckbox3">그외</label>
															</div>
								        				</div>
								        			</div>
								        		</form>
								        	</div >
								        	<div class="modal-foot">
								        		<button type="submit"><a href="결제창 띄워주세요">결제하기</a></button>
								        	</div>
								        </div>
								    </div>
							    </div>
						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2><a href="index.html">~~~~ donation</a></h2>
									</header>
									<ul>
										<li><span class="opener">MY PAGE</span>
											<ul>
												<li><a href="#">회원정보 조회</a></li>
												<li><a href="#">포인트 적립</a></li>
												<li><a href="#">재능 등록</a></li>
												<li><a href="#">공유 서류 조회</a></li>
											</ul></li>										
										<li><a href="viewCorp.jsp">기부 하기</a></li>
										<li><a href="elements.html">재능 기부</a></li>
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

	</body>
</html>
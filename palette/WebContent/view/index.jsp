<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>투개더</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/jejuhallasan.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<style>
	body { font-family :'Jeju Hallasan', serif;}
	#header{ height: 100px; }
	#logo a{font-family :'Hanna', serif; text-decoration:none; font-size: 45px; color: white;}
	.item{height:53em;}
	.main_slider .item{background-repeat: no-repeat; background-size:100% 100%; background-position:center;}
	.main_menu {max-width:100%; height:auto;}
	#page{text-decoration:none;}
	.main_menu img {width:30%; height:30%; }
	footer{background-color: rgba(0, 0, 0,0.8); }
	.footer-bottom { background: #e3e3e3; border-top: 1px solid #DDDDDD; padding-top: 15px; padding-bottom: 10px; text-align:center;}

</style>
</head>
<body>
<!-- header -->
<nav class = "navbar navbar-fixed-top" id="header">
   <div class="header-wrapper">
	<header id="header">
	<div class="stuck-nav">
		<div class="container" style="padding-top:30px">
			<div class="row">
				<div class="pull-left col-xs-12 col-md-5 col-lg-4">
					<div class="text-center" id="logo">
					<!-- logo start -->
						<a href="/palette/view/index.jsp">투개더</a>
					<!-- logo end -->
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
</div>	
</nav>
<!-- end: Header -->

<!-- Slider -->
<section class="main_slider">
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
	<!-- Indicators -->
  	<ol class="carousel-indicators">
    	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    	<li data-target="#carousel-example-generic" data-slide-to="1"></li>
    	<li data-target="#carousel-example-generic" data-slide-to="2"></li>
  	</ol>
  	
	<!-- Wrapper for slides -->
	<div class="carousel-inner" >
		<div class="item active"style="background-image:url(/palette/images/ms1.jpg);">
			<div class="carousel-caption">
				<h2>사지말고, 입양하세요 <br></h2>
				<h3>누구든지 돈을 주고 동물을 산다면, 그 이면에는 죽을 때까지 고통 받아야 하는 </h3>
				<h3>또 다를 생명들이 존재해야 하는 것을 기억해 주세요.</h3>
			</div>
		</div>

		<div class="item" style="background-image:url(/palette/images/ms2.jpg);">
			<div class="carousel-caption" >
				<h2>The only creatures that are evolved enough to convey pure love are dogs and infants.</h2>
				<h2>순수한 사랑을 전하기 위해 진화한 유일한 생물은 개와 아이들입니다.</h2>
				<h3>-Johnny Depp-</h3>
			</div>
		</div>

		<div class="item" style="background-image:url(/palette/images/ms3.jpg); ">
			<div class="carousel-caption">
				<h2>There are three faithful friends: <br>
					an old wife, an old dog, and ready money.</h2>
				<h2>세 명의 충실한 친구가 있다: <br> 
					나의 아내, 반려견, 그리고 준비된 돈이다. </h2>
				<h3>-Benjamin Franklin-</h3>
			</div>
		</div>
			</div>

			<!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</section>
<!--end: Slider -->

	<section class="main_menu" style="background-color:#e6e6e6;">
		<div class= "container-fullwidth" style="padding-top:30px; padding-bottom:20px;">
			<div class="row">
				<div class="col-md-4 text-center" >
					<a href="/palette/view/dogting.jsp" id="page">
					<img src="/palette/images/dog1_m.png" >
					<h3>DOGTING</h3>
					<p>나와 어울리는 강아지</p>
					</a>
				</div>
				<div class="col-md-4 text-center">
					<a href="/palette/adoption" id="page">
					<img src="/palette/images/dog2_m.png" >
					<h3>ADOPTION</h3>
					<p>유기견 입양</p>
					</a>
				</div>
				<div class="col-md-4 text-center">
					<a href="/palette/view/petcare.jsp" id="page">
					<img src="/palette/images/dog3_m.png" >
					<h3>PET CARE</h3>
					<p>주변 애견호텔 / 병원</p>
					</a>
				</div>
			</div>	
		</div>
	</section>
	<!-- footer -->
<div class="footer-wrapper">
   <footer id="footer">
      <div class="container " style="text-align:center; ">
      
         
         <p style= "margin-left: 20px; margin-top:40px;">
            <h4 style= "color:white"><br>Palette Pte. Ltd.</h4><br><br></p>


         <div class="row" id="rowstyle" style="color: white;">
            <div class="col-md-2 col-md-offset-1">
               <img src="/palette/images/girl1.png">
               <h4>Yejin Kang</h4>
               <p>
                  Project Manager_Coder<br> Modeling of MVC & Servlet
               </p>
            </div>
            <div class="col-md-2 ">
               <img src="/palette/images/girl2.png">
               <h4>Suji Kwon</h4>
               <p>
                  DB Builder_Coder<br> Modeling of MVC & Servlet
               </p>
            </div>
            <div class="col-md-2 ">
               <img src="/palette/images/girl3.png">
               <h4>Minji Park</h4>
               <p>
                  UI designer_Coder<br> Modeling of MVC & View
               </p>
            </div>
            <div class="col-md-2">
               <img src="/palette/images/girl4.png" >
               <h4>Eunhee Kim</h4>
               <p>
                  Data Organizer_Analyst<br> Collecting, visualizing, analyzing
                  data
               </p>
            </div>
            <div class="col-md-2">
               <img src="/palette/images/girl5.png" >
               <h4>Danbie Oh</h4>
               <p>
                  Data Collector_Analyst<br> Collecting, visualizing, analyzing
                  data
               </p>
            </div>
         </div>

         <hr style = "opacity:0.6; width:60% "><br>
         <p style="color:white; margin-left: 20px; margin-bottom:20px;"> Copyright © Footer 2017. All right reserved.<br>
                                                      © 2017.06.26 – 2017.09.24<br>
                                                      Built with our knowledge<br>
                                                      Made on our labtop<br>
                                                      Hosted by Yejin, Suji, Minji, Eunhee, Danbie aka Palette<br><br>      
         </p>
      </div>
   </footer>
</div>
   <!--footer-->

</body>
</html>
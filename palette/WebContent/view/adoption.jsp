<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="model.LostDogVO, java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>투개더</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<style>
body {font-family :'Hanna', serif; text-decoration:none; background-image:url('/palette/images/dog_survey.jpg'); opacity: 0.7;}
.navbar{background-color:#f2f2f2; margin-bottom:0px; opacity:0.8;}
header { height : 100px; background-color:black; opacity:0.6; position: relative; z-index: 1; }
#logo img{ padding-top:10px; }
#main_menu a{text-decoration:none; color:white; padding-right:20px; font-size:20px;}
.LostDogInfo {width:100%; height:100%; }
#LostDog{text-align:center; width:70%; margin:auto; padding-top:20px;}
.cover {border-radius: 50px; background: white; margin: 80px auto; padding: 23px 50px; width: auto; height: auto; }
.survey_title{color:brown; text-align:center;}    
.btn { border-radius: 50px; }
#DogInfo{text-align:right; padding-bottom:20px; padding-right:20px;}
#DogInfo a{ font-size:20px; color:black; font-weight:500; text-decoration:none;}
#DogInfo a:hover{color:orange;}
footer{ background-color: rgba(0, 0, 0,1); }
</style>
</head>
<body>
</div>
<!-- header -->
<div class="header-wrapper">
<header id="header">
   <div class="stuck-nav">
      <div class="container" >
         <div class="row">
            <div class="pull-left col-xs-12 col-md-5 col-lg-4">
               <div class="text-center" id="logo" style="opacity:1.0!important">
               <!-- logo start -->
                  <a href="/palette/view/index.jsp"><img src="/palette/images/logo.png" > &nbsp</a>
                  
               <!-- logo end -->
               </div>
            </div>   
            <div class="pull-right col-md-7 col-lg-8 hidden-xs">
               <div class="text-center" id="main_menu" style="padding-top:40px; padding-left:120px">
                 	 <a href="/palette/view/index.jsp">Home</a>
					<a href="/palette/view/dogting.jsp">DogTing</a>
					<a href="/palette/adoption">Adoption</a>
					<a href="/palette/view/petcare.jsp">Pet Care</a>
               </div>   
            </div>
         </div>
      </div>
   </div>
</header>
<!-- end:header -->
</div>
<section class="LostDogInfo">
<div class ="container">
   <div class="cover">
         <h1 class="survey_title">〔 입양 &nbsp&nbsp가능 &nbsp 유 기 견  &nbsp&nbsp정 보 〕</h1><br>
    <div class="row detali" style="text-align:center;">
    <div class="col-md-2 col-md-offset-2">
    	<h4>상세 검색</h4>
    </div>
   <div class="col-md-2 dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">지역
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=a&lo=seoul">서울시</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=a&lo=gg">경기도</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=a&lo=in">인천</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=a&lo=all">전국분양</a></li>
    </ul>
    </div>
    <div class="col-md-2 dropdown">
     <button class="btn btn-default dropdown-toggle" type="button" id="menu2" data-toggle="dropdown">성별
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu2">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=b&sex=b">남아</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=b&sex=g">여아</a></li>
    </ul>
    </div>
    <div class="col-md-2 dropdown">
     <button class="btn btn-default dropdown-toggle" type="button" id="menu3" data-toggle="dropdown">견종
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu3">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=c&type=poo">푸들</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=c&type=mal">말티즈</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=c&type=mix">믹스견</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=c&type=pe">페키니즈</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="/palette/adoption?action=c&type=yo">요크셔테리어</a></li>    
    </ul>
  </div>
  </div>
        
	<form method="get" action="/palette/palette" id="LostDog">
		<table class="table table-hover" id="table">
			<tr>
				<th style='color: blue; text-align:center;'>지역</th>
				<th style='color: red; text-align:center;'>성별</th>
				<th style='color: #ff66cc; text-align:center;'>견종</th>
				<th style='color: orange; text-align:center;'>작성일</th>
			</tr>			
			<%	
				ArrayList<LostDogVO> ldl = (ArrayList<LostDogVO>)request.getAttribute("ldl");
				if (ldl != null) {
					for (LostDogVO lvo : ldl) {
			%>			
			<tr>
				<td><%=lvo.getLocation()%></td>
				<td><%=lvo.getSex()%></td>
				<td><%=lvo.getType()%></td>
				<td><%=lvo.getDate()%></td>
			</tr>
			<%
				}
			}
				
			%>
		</table>
	</form>
	<nav aria-label="Page number" style="text-align:center;">
  <ul class="pagination" >
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
<div class="row" id="DogInfo" style="text-align:right;">
		<a href="http://www.zooseyo.or.kr/Yu_board/freesale_ty_1.html?ty=1">유기견 무료 입양 알아보기 -></a>
	</div>
   </div>
</div>


</section>
<!-- footer -->
<div class="footer-wrapper">
   <footer id="footer">
      <div class="container " style="text-align:center;">
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
  
   <script>
   $( document ).ready(function() {
	    $('.dropdown').each(function (key, dropdown) {
	        var $dropdown = $(dropdown);
	        $dropdown.find('.dropdown-menu a').on('click', function () {
	            $dropdown.find('button').text($(this).text()).append(' <span class="caret"></span>');
	        });
	    });
	 
	});
   </script>

</body>
</html>
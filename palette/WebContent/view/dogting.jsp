<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>투개더</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
body {font-family :'Hanna', serif; text-decoration:none; background-image:url('/palette/images/dog_survey.jpg'); opacity: 0.7;}
.navbar{background-color:#f2f2f2; margin-bottom:0px; opacity:0.8;}
header { height : 100px; background-color:black; opacity:0.6; position: relative; z-index: 1; }
#logo img{ padding-top:10px; }
#main_menu a{text-decoration:none; color:white; padding-right:20px; font-size:20px;}
.survey_slider {width:100%; height:100%;}
.cover {border-radius: 50px; background: #331a00; margin: 80px auto; padding: 23px 50px; width: 88%; height: 500px; 
    opacity: 0.8;}
#test{color:#f5f5ef;}
#backBtn {color:black; margin-top:40px;}
.survey_title{padding-top:40px; text-align:center; font-size:70px;}
.clearfix{button-color:#f5f5ef; padding-top:20px; color:black;}
.btn { border-radius: 50px; }
.radio {font-size:20px; font-family: 'Nanum Gothic', serif; padding-top:20px;}
.radio button hover{color:black;}
footer{ background-color: rgba(0, 0, 0, 1); }
input[type="radio"] { display: none; }
.radio:hover{ color:violet; }

</style>
</head>
<body>
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
<section class="survey_slider">
<div class ="container">
	<div class="cover">
		<div class="carousel slide" data-interval="1000000" data-ride="carousel" id="test">
			<div class="question-container">
				
			</div>		
		</div>
		<div class="completed-message"></div>
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

<script>
$(document).ready(function() {
	  var slides = [
	    {
	      text: "내게 어울리는 강아지는 무엇일까?",
	      button: true,
	    },
	    {
	      text: "규칙과 예절을 중요시하나요?",
	      radios: true,
	    },
	    {
	      text: "활동적인 스포츠를 즐겨하나요?",
	      radios: true,
	    },
	    {
	      text: "스스로가 깔끔한 편이라고 생각하나요?",
	      radios: true,
	    },
	    {
		  text: "혼자 사나요?",
		  radios: true,
	    },
	    {
	      text: "반려견을 관리하는데 투자할 수 있는 시간은 일주일에 최대 몇시간 인가요? <br> 예) 목욕, 병원, 산책 …",
	      radios: true,
	    },
	    {
	      text: "반려견을 위해 최대 얼마까지 병원비를 지불 할 의향이 있나요? (1회 기준)",
	      radios: true,
	    },
	    {
	      text: "주거형태는 어떤가요?",
	      radios: true,
	    },
	    {
	      text: "반려동물을 키워 본 경험이 있으신가요?",
	      radios: true,
	    },
	    {
	      text: "집 안 분위기가 어떤가요?",
	      radios: true,
	  	},
	  	{
	      text: "집을 비우는 경우가 자주 있나요?",
	      radios: true,
		},
		{
	      text: "집에 아이가 있나요?",
	      radios: true,
		},
		{
	      text: "당신의 집에 다른 반려견(또는 반려동물)이 있나요?",
	      radios: true,
		},
		{
		  text: "가게나 직장에서 키울 계획이 있나요?",
		  radios: true,
		},
		{
		  text: "(자신을 포함하여) 가족 중에 동물의 털에 알러지가 있는 사람이 있습니까?",
		  radios: true,
		},
		{
		  text: "선호하는 반려견의 크기는?",
		  radios: true,
		},
		{
		   text: "버튼을 눌러 결과를 확인하세요",
		   result : true,
		}
	  ];

	  var countSlides;
	  countSlides = slides.length;

	  function createSlides() {
	    // I wanna take the slider ID in as argument in order to make it more versatile. Dont know if it could work
	    var wrapper = $("#test");
	    var questionNumber = 1;
	    var questionsTotal = 0;
	    var output;

	    for(var i = 0; i < countSlides; i++) {
	      if (slides[i].radios === true) {
	        questionsTotal += 1;
	      }
	    }

	    output = "<div class='carousel-inner'>";
	    // Loop through all elements and insert html block of radio buttons
	    for(var i = 0; i < countSlides; i++) {
	      if (i === 0) {
	        output += "<div class='item active'>";
	      } else {
	        output += "<div class='item'>";
	      }
	      output += "<div class='section'>";
	      output += "<div class='question'>";
	      output += "<div class='question-number clearfix'>";
	      
	     if (slides[i].radios === true) {
	        output += "<p style='color:white;'>Question " + questionNumber + " of " + questionsTotal + "</p>";
	        output += "<hr>";
	        questionNumber += 1;
	     }
	     	output += "</div>";
	      if (slides[i].radios === true) {
	    	 output += "<p style='font-size:30px;'>" + slides[i].text; + "</p>";
	         output += "<div class='radio-button-group'>";
	       if(i === 1){       	
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='o=5&p=5&q=5&r=1&t=1' required> 1. 예";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='o=1&p=1&q=1&r=5&t=5'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 2){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='u=1&v=5&w=5&x=5' required> 1. 예";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='u=5&v=1&w=1&x=1'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 3){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='j=1' required> 1. 예";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='j=5'> 2. 아니오";
		        output += "</label>";
	        }else if(i === 4){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='e=1' required> 1. 예";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='e=5'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 5){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='k=5&m=1' required> 1. 7시간 미만";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='k=1&m=5'> 2. 7시간 이상";
		        output += "</label>";
		    }else if(i === 6){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='l=5' required> 1. 10만원 이하";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='l=3'> 2. 50만원 이하";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='l=1'> 3. 금액은 상관 없음";
		        output += "</label>";
		    }else if(i === 7){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='a=5&s=1' required> 1. 아파트 빌라 등 공동주택";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='a=1&s=5'> 2. 단독 주택";
		        output += "</label>";
		    }else if(i === 8){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='b=1'  required> 1. 예";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='b=5'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 9){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='c=1' required> 1. 다소 시끄럽고 밝다 ";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='c=5'> 2. 차분하고 조용하다";
		        output += "</label>";
		    }else if(i === 10){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='d=1' required> 1. 평일 회사 근무시간 정도 ";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='d=5'> 2. 1번 이외의 밤 주말에도 외출이 잦음";
		        output += "</label>";
		    }else if(i === 11){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='f=5' required> 1. 예 ";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='f=1'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 12){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='g=5' required> 1. 예 ";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='g=1'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 13){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='h=5' required> 1. 예 ";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='h=1'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 14){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='i=1' required> 1. 예 ";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='i=5'> 2. 아니오";
		        output += "</label>";
		    }else if(i === 15){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='n=1' required> 1. 작을수록 좋다 ";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='n=5'> 2. 클수록 좋다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='n=3'> 3. 적당했으면 좋겠다";
		        output += "</label>";
		    }  
			output += "<input type='button' id='backBtn' href='#test' data-slide='prev' class='btn' value='« Back'></input>";
			output += "</div>"; // .radio-button-group

	      }
	      if (slides[i].button === true) {
		    	output += "<h1 class='survey_title'>" + slides[i].text; + "</h1><br>";
		        output += "<div class='clearfix'><button href='#test' style='font-size:25px; margin-top:20px;' class='btn center-block' data-slide='next'> Start survey </button></div>";
	      }
	      if (slides[i].result === true) {
	    	
	          output += "<div class='results'></div>";
	      }
	      output += "</div>";
	      output += "</div>";
	      output += "</div>"; // .section
	    }
	    output += "</div>"; // .carousel-inner
	    $(wrapper).append(output);
	  }

	  createSlides();
	  

	  function resultq() {
	    var values;
	    var output = "";
	    var foo = [];
	    for (var i = 1; i < 16; i++)
	    {
	      values = $(':radio[name="radios'+i+'"]:checked').val();
	      foo.push(values.split("&"));
	    }
	    output += "<p style='font-size:50px; margin-top:20px; text-align:center;'>" + slides[i].text; + "</p>";
	    output += "<form method='POST' action='/palette/survey' name='survey'>";
	    output += "<input type='hidden' name='foo' value="+foo.sort()+">";
	    output += "<input type='submit' style='font-size:25px; margin-top: 50px; color:black;' class='btn center-block' value='결과 확인'>";
	    output += "</form>";
	 
	    $(".results").html(output);
	  }
	  // Toggles the animated background color fill on the label for each radio button
	  // And fires the next slide in the carousel
	  $("input").click(function() {
	    $("input:not(:checked)").parent().removeClass("checked");
	    $("input:checked").parent().addClass("checked");
	    $(".carousel").delay(600).queue(function() {	
	      $(this).carousel("next");
	      $(this).dequeue();
	    });
	    resultq();
	  });
	  
	     
	
	});
	

</script>
</body>
</html>
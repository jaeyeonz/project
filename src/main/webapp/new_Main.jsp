<%@page import="cookking4.model.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title></title>

  <!--Open Graph-->


  <!--파비콘-->
  <!--브라우저 스타일 초기화-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <!--Google Fonts - 나눔고딕-->
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <!--Google Material Icons-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

  <link rel="stylesheet" href="./css/main.css" />

  <!--GSAP & ScrollToPlugin-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"
    integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"
    integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q=="
    crossorigin="anonymous"></script>
  <!--Swiper-->
  <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
  <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>
  <!--ScrollMagic-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
  <!--Lodash-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"
    integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww=="
    crossorigin="anonymous"></script>
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <script defer src="./js/youtube.js"></script>
  <script defer src="./js/main.js"></script>
</head>

<body>

<% VO mvo = (VO)session.getAttribute("mvo"); %>


  <!--YOUTUBE VIDEO-->
  <section class="youtube">
    <div class="youtube__area">
      <video class="bg-video" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
        <source src="_assets/bg_1.mp4" type="video/mp4" />
      </video>
    </div>
    <div class="youtube__cover"></div>
    <div class="inner">

    </div>
  </section>


  <!--SEASON PRODUCT-->
  <section class="season-product scroll-spy bg1">
    <div class="inner">

      <img src="./images/ref.png" alt="아이스 커피 블렌드" class="refImg" />

      <div class="text-group">
        
          <!-- <a href=""><h1>냉장고로 이동</h1></a> -->
          <span class="material-symbols-outlined">
            arrow_right_alt
          </span>
        

      </div>

    </div>
  </section>


  <!--RESERVE COFFEE-->
  <section class="season-product scroll-spy bg2">
    <div class="inner">

      <img src="./images/pjw.png" alt="" class="pjwImg" />
      <div class="text-group goRecipe">
        <!-- <a href=""><h1>레시피 추천</h1></a> -->
        
        
        <span class="material-symbols-outlined">
          arrow_right_alt
        </span>
      </div>
    </div>
  </section>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
        crossorigin="anonymous"></script>
        
     <script>
              var id = "<%=mvo.getLog_id() %>";
              console.log(id);
              var aTag = $('a');
              var address = "FavoriteRecipe?name=<%=mvo.getName()%>&prfr_Ingr1=<%=mvo.getPrfr_Ingr1()%>&prfr_Ingr2=<%=mvo.getPrfr_Ingr2()%>&prfr_Ingr3=<%=mvo.getPrfr_Ingr3()%>";
              
           // 2. ex01Ajax 서블릿 파일로 데이터를 요청
              $.ajax({
                 // 요청할 서버의 url
                 // 내 컴퓨터 172.30.1.254
                 url : 'http://172.30.1.32:8081/',
                 type : 'GET',
                 // 보내줄 데이터 지정
                 data : 'id='+id,
                 
                 success : function(res){
                    // res -> 서버페이지에서 받아온 결과값
                    for(let i =0; i< 5; i++){
                       address += "&recipe_id"+(i+1)+"="+res.index[i]
                    }
                    $('.goRecipe').append('<a href='+address+'><h1>레시피 추천</h1>'+'</a>');
                    console.log(res);
                    console.log(address);
                    // alert('요청성공!');
                 },
                 error : function(){
                    alert('요청실패!');
                 }
              });              
        </script>
</body>

</html>
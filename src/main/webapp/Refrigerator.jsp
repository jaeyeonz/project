<%@page import="cookking4.model.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Creative&nbsp;Stories, Time to Makea Difference, Create YourVisual Style, We developDigital Strategies, We are nominated to Agency of Year">
    <meta name="description" content="">
    <title>냉장고</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Refrigerator.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.5, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i|Allerta:400">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png",
		"sameAs": []
}</script>
    <meta name="theme-color" content="#e00b4c">
    <meta property="og:title" content="냉장고">
    <meta property="og:type" content="website">
    
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>
    #ingr {
    	width : 150px;
    	height : 100px;
    }
    </style>
  </head>
  <body class="u-body u-overlap u-xl-mode">
  <%  
  VO mvo = (VO)session.getAttribute("mvo");   
  
  %>
  
  <header class="u-clearfix u-header u-header" id="sec-fe7f"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-align-center u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font" style="font-size: 1.5rem; letter-spacing: 0px; font-family: GodoM; font-weight: 700;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-nav u-spacing-25 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp" style="padding: 16px 12px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="RecipeList" style="padding: 16px 12px;">레시피</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="PriceSearch.jsp" style="padding: 16px 12px;">가격검색</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Refrigerator.jsp" style="padding: 16px 12px;">냉장고</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="RecipeList">레시피</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="PriceSearch.jsp">가격검색</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Refrigerator.jsp">냉장고</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-align-right u-text u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="#"><%=mvo.getName() %>님 환영합니다.
	      <a href="Logout"><button type="button" class="btn btn-primary" >로그아웃</button></a>
          </a>
        </p>
      </div></header>
    <section class="u-align-center-lg u-align-center-md u-align-center-xl u-align-left-sm u-align-left-xs u-clearfix u-palette-4-light-2 u-section-1" id="carousel_e725">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-1">나의 냉장고</h1>
        <div class="u-align-center u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-custom-item u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-1">
                <a href="javascript:void(0)" id = "big-ctg" class="u-active-custom-color-1 u-border-1 u-border-active-black u-border-grey-25 u-btn u-button-style u-custom-font u-custom-item u-dialog-link u-hover-custom-color-1 u-text-grey-80 u-white u-btn-1">채<span style="font-size: 1rem;"></span>소
                </a>
              </div>
            </div>
            <div class="u-container-style u-custom-item u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-2">
                <a href="javascript:void(0)" id = "big-ctg" class="u-active-custom-color-1 u-border-1 u-border-active-black u-border-grey-25 u-btn u-button-style u-custom-font u-custom-item u-hover-custom-color-1 u-text-grey-80 u-white u-btn-2">정육/계란류</a>
              </div>
            </div>
            <div class="u-container-style u-custom-item u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-3">
                <a href="javascript:void(0)" id = "big-ctg" class="u-active-custom-color-1 u-border-1 u-border-active-black u-border-grey-25 u-btn u-button-style u-custom-font u-custom-item u-hover-custom-color-1 u-text-grey-80 u-white u-btn-3">수산물/건해산</a>
              </div>
            </div>
            <div class="u-container-style u-custom-item u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-4">
                <a href="javascript:void(0)" id = "big-ctg" class="u-active-custom-color-1 u-border-1 u-border-active-black u-border-grey-25 u-btn u-button-style u-custom-font u-custom-item u-hover-custom-color-1 u-text-grey-80 u-white u-btn-4">쌀/잡곡/견과</a>
              </div>
            </div>
          </div>
        </div>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div id = "ingrList" class="u-gallery u-layout-grid u-lightbox u-show-text-always u-gallery-1">
          
        </div>
        
        
      </div>
    </section>
    <style class="u-overlap-style">.u-overlap:not(.u-sticky-scroll) .u-header {
background-color: #ffffff !important
}</style>
    
    

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
    var codeSel = $('#ingrList');
    var optionHtml = '';
    var ctg0 = ['두부', '콩나물', '숙주나물',
        '고구마', '감자',
        '양파', '마늘', '파', '생강',
        '오이', '가지', '호박', '옥수수',
        '상추', '깻잎', '쌈채소',
        '고추', '피망', '파프리카',
        '시금치', '부추', '나물',
        '양배추', '양상추', '브로콜리',
        '당근', '우엉', '연근', '마',
        '버섯', '배추', '무'];

    var ctg1 = ['계란', '알류',
        '닭', '오리고기',
        '양고기',
        '돼지고기',
        '국내산소고기'];

    
    var ctg2 = ['생선',
        '오징어', '낙지', '주꾸미', '문어',
        '새우', '게', '랍스터',
        '전복', '굴', '멍게', '조개류',
        '회', '명란', '날치알', '장',
        '김', '미역', '기타해조류',
        '멸치', '황태', '노가리',
        '건오징어', '건어물', '다시팩'];
    
    var ctg3 = ['백미',
        '찹쌀', '현미', '흑미',
        '혼합곡',
        '콩', '팥', '보리', '귀리',
        '수수', '조', '깨', '잡곡'];
    
    var btnCtg = document.querySelectorAll('#big-ctg')
    btnCtg[0].addEventListener('click', function () {
        codeSel.find('div').remove();

        optionHtml = '';
        optionHtml += '<div class="u-gallery-inner u-gallery-inner-1">';
        for (var i = 0; i < ctg0.length; i++) {
            optionHtml += '<div id = "ingr" class="u-border-3 u-border-grey-75 u-effect-hover-zoom u-gallery-item  u-shape-round u-gallery-item-'+(i+1)+'">';
            optionHtml += '<div class="u-back-slide u-back-slide-1">';
            optionHtml += '<img class="u-back-image u-expanded" src="images/default-image.jpg" alt="'+ctg0[i]+'">';
            optionHtml += '</div>';
            optionHtml += '<div class="u-over-slide u-valign-bottom u-over-slide-'+(i+1)+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg0[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</div>';
            optionHtml += '</div>';
        }
        optionHtml += '</div>';

        codeSel.append(optionHtml);

    })
    btnCtg[1].addEventListener('click', function () {
        codeSel.find('div').remove();

        optionHtml = '';
        optionHtml += '<div class="u-gallery-inner u-gallery-inner-1">';
        for (var i = 0; i < ctg1.length; i++) {
            optionHtml += '<div id = "ingr" class="u-border-3 u-border-grey-75 u-effect-hover-zoom u-gallery-item  u-shape-round u-gallery-item-'+(i+1)+'">';
            optionHtml += '<div class="u-back-slide u-back-slide-1">';
            optionHtml += '<img class="u-back-image u-expanded" src="images/default-image.jpg" alt="'+ctg1[i]+'">';
            optionHtml += '</div>';
            optionHtml += '<div class="u-over-slide u-valign-bottom u-over-slide-'+(i+1)+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg1[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</div>';
            optionHtml += '</div>';
        }
        optionHtml += '</div>';

        codeSel.append(optionHtml);

    })
    btnCtg[2].addEventListener('click', function () {
        codeSel.find('div').remove();

        optionHtml = '';
        optionHtml += '<div class="u-gallery-inner u-gallery-inner-1">';
        for (var i = 0; i < ctg2.length; i++) {
            optionHtml += '<div id = "ingr" class="u-border-3 u-border-grey-75 u-effect-hover-zoom u-gallery-item u-shape-round u-gallery-item-'+(i+1)+'">';
            optionHtml += '<div class="u-back-slide u-back-slide-1">';
            optionHtml += '<img class="u-back-image u-expanded" src="images/default-image.jpg" alt="'+ctg2[i]+'">';
            optionHtml += '</div>';
            optionHtml += '<div class="u-over-slide u-valign-bottom u-over-slide-'+(i+1)+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg2[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</div>';
            optionHtml += '</div>';
        }
        optionHtml += '</div>';

        codeSel.append(optionHtml);

    })
    btnCtg[3].addEventListener('click', function () {
        codeSel.find('div').remove();

        optionHtml = '';
        optionHtml += '<div class="u-gallery-inner u-gallery-inner-1">';
        for (var i = 0; i < ctg3.length; i++) {
            optionHtml += '<div id = "ingr" class="u-border-3 u-border-grey-75 u-effect-hover-zoom u-gallery-item  u-shape-round u-gallery-item-'+(i+1)+'">';
            optionHtml += '<div class="u-back-slide u-back-slide-1">';
            optionHtml += '<img class="u-back-image u-expanded" src="images/default-image.jpg" alt="'+ctg3[i]+'">';
            optionHtml += '</div>';
            optionHtml += '<div class="u-over-slide u-valign-bottom u-over-slide-'+(i+1)+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg3[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</div>';
            optionHtml += '</div>';
        }
        optionHtml += '</div>';

        codeSel.append(optionHtml);

    })
    </script>
  </body>
</html>
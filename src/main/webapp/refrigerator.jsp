<%@page import="cookking4.model.FavoriteVO"%>
<%@page import="cookking4.model.VO"%>
<%@page import="cookking4.model.RecipeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Clean Blog - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="_assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>




<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles2.css" rel="stylesheet" />
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Refrigerator.css" media="screen">

</head>

<body>
	<!-- Navigation-->
	<!-- Page Header-->
	<%
	VO mvo = (VO) session.getAttribute("mvo");
	List<RecipeVO> baseList = (List<RecipeVO>) session.getAttribute("list");
	List<FavoriteVO> fvo = (List<FavoriteVO>) session.getAttribute("FavoriteVO");
	int pageSize = 5;

	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) {
		pageNum = "1";
	}

	//7-4. 시작행번호계산
	//10개씩 컬럼 나누고 2페이지에서 시작행이 11이되고 3페이지에서 시작행이 21이 되게끔 만들기
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize;
	//7-5. 끈행번호계산
	//currentPage가 2인경우, 2*10 = 20
	//currentPage가 3인경우, 3*10 = 30
	int endRow = startRow + (pageSize - 1);
	//4. 게시판 글의 수를 화면에 데이터 출력
	//게시판 총 글의 수 : cnt개
	//5. getBoardList() 메서드생성
	%>

	<!-- ////////////////////// header 영역 //////////////////////////////////  -->

	<header class="masthead"
		style="background-image: url('images/refbg.jpg')">

		<div class="position-relative recipeOut">
						<a class = "recipe-Out" href="#"><%=mvo.getName()%>님 환영합니다. <a href="Logout"><button
									type="button" class="btn btn-primary">로그아웃</button></a> </a>
					</div>
					<div class = "position-relative row logo">
					<a href="main.jsp"><img class="logoimg" src="./images/logo.png"/></a>
					</div>
		<div class="container position-relative px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
			

				</div>
			</div>
		</div>
	</header>
	<section class="u-align-center-lg u-align-center-md u-align-center-xl u-align-left-sm u-align-left-xs u-clearfix u-palette-4-light-2 u-section-1" id="carousel_e725 containerIngr">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-list u-list-1">
          <div class="u-repeater u-repeater-1 btnGroup">
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

	<!-- ///////////////////////////////content /////////////////////////-->


	<!-- Footer-->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts2.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
    var codeSel = $('#ingrList');
    var optionHtml = '';
    var ctg0 = ['숙주',
        '고구마', '감자',
        '풋마늘',
        '가지', '단호박', '옥수수',
        '양상추', '깻잎',
        '청경채','청경채',
        '시금치', '부추', '콩나물',
        '우엉', '연근', '도라지',
        '목이버섯','팽이버섯','양송이버섯', '배추','느타리버섯','표고버섯', '무'];

    var ctg1 = ['계란',
        '닭고기',
        '돼기고기',
        '쇠고기'];

    
    var ctg2 = ['갈치',
        '오징어', '낙지', '쭈꾸미', 
        '새우', '꽃게',
        '전복', '굴', '모시조개',
         '명란',
        '조기', '미역',
        '멸치'];
    
    var ctg3 = ['쌀',
        '찹쌀', 
        '흰콩', '보리','콩비지','흑임자','서리태콩','멥쌀가루'];
    
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
            optionHtml += '<a href="PriceList?ingr_info_irdnt_nm='+ctg0[i]+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg0[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</a>'
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
            optionHtml += '<a href="PriceList?ingr_info_irdnt_nm='+ctg1[i]+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg1[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</a>';            
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
            optionHtml += '<a href="PriceList?ingr_info_irdnt_nm='+ctg2[i]+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg2[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</a>';  
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
            optionHtml += '<a href="PriceList?ingr_info_irdnt_nm='+ctg3[i]+'">';
            optionHtml += '<h3 class="u-custom-font u-gallery-heading u-text-body-alt-color" style="font-size: 1.25rem; font-family: GodoM;">'+ctg3[i]+'</h3>';
            optionHtml += '<p class="u-gallery-text" style="margin-top: 0px;"></p>';
            optionHtml += '</a>';  
            optionHtml += '</div>';
            optionHtml += '</div>';
        }
        optionHtml += '</div>';

        codeSel.append(optionHtml);

    })
    </script>
</body>

</html>

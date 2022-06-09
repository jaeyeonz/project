<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="Our Food, organic, Our Food">
<meta name="description" content="">
<title>Home</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Home.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 4.12.5, nicepage.com">

<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i|Allerta:400">



<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
<meta name="theme-color" content="#e00b4c">
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body data-home-page="Home.html" data-home-page-title="Home" class="u-body u-xl-mode">
	<header class="u-clearfix u-header u-header" id="sec-fe7f">
		<div class="u-clearfix u-sheet u-sheet-1">
			<nav
				class="u-align-center u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse u-custom-font"
					style="font-size: 1.5rem; letter-spacing: 0px; font-family: GodoM; font-weight: 700;">
					<a
						class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg class="u-svg-link" viewBox="0 0 24 24">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#menu-hamburger"></use></svg> <svg class="u-svg-content"
							version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px"
							y="0px" xmlns:xlink="http://www.w3.org/1999/xlink"
							xmlns="http://www.w3.org/2000/svg">
							<g>
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</g></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-custom-font u-nav u-spacing-25 u-unstyled u-nav-1">
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp" style="padding: 16px 12px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Recipe.jsp" style="padding: 16px 12px;">레시피</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="PriceSearch.jsp" style="padding: 16px 12px;">가격검색</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Refrigerator.jsp" style="padding: 16px 12px;">냉장고</a></li>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-inner-container-layout u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
				                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp">Home</a>
				</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Recipe.jsp">레시피</a>
				</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="PriceSearch.jsp">가격검색</a>
				</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Refrigerator.jsp">냉장고</a>
				</li>							
				</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
			<p class="u-align-right u-text u-text-default u-text-1">
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#loginModal">로그인</button>

				<!-- Modal -->
			<div class="modal fade" id="loginModal" tabindex="-1"
				aria-labelledby="loginModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="loginModalLabel">로그인</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form action="LoginService" method="post">
								<div class="mb-3">
									<label for="loginId" class="form-label">Id</label> 
									<input type="text" class="form-control"	id="loginId" name="userId">
								</div>
								<div class="mb-3">
									<label for="loginPw" class="form-label">Password</label>
									<input type="password" class="form-control"	id="loginPw" name="pw">
								</div>
								<div class="mb-3"></div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
						<div class="modal-header">
							<h5 class="modal-title" id="loginModalLabel">회원가입</h5>
						</div>
						<div class="modal-body">
							<form action="JoinService" method="post">
								<div class="mb-3">
									<label for="signupId" class="form-label">Id</label>
									<input type="text" class="form-control" id="signupId" name="userId">
									<button class="btn btn-outline-secondary" type="button" id="id_check">중복검사</button>
								</div>
								<div class="mb-3">
									<label for="signupPw" class="form-label">Password</label>
									<input type="password" class="form-control"	id="signupPw" name="pw">
								</div>
								<div class="mb-3">
									<label for="signupName" class="form-label">이름</label> 
									<input type="text" class="form-control" id="signupName" name="name">
								</div>
								<div class="mb-3">
									<label for="Favorite1" class="form-label">선호식재료1</label> 
									<input type="text" class="form-control" id="Favorite1" name="favIndr1">
								</div>
								<div class="mb-3">
									<label for="Favorite2" class="form-label">선호식재료2</label> 
									<input type="text" class="form-control" id="Favorite2" name="favIndr2">
								</div>
								<div class="mb-3">
									<label for="Favorite3" class="form-label">선호식재료3</label> 
									<input type="text" class="form-control" id="Favorite3" name="favIndr3">
								</div>
								<div class="mb-3"></div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			</p>

		</div>
	</header>
    <section class="u-clearfix u-image u-section-1" id="sec-ff00" data-image-width="2000" data-image-height="1333">
      <div class="u-clearfix u-expanded-width u-gradient u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-align-left u-container-style u-image u-layout-cell u-left-cell u-right-cell u-shading u-size-60 u-image-1" data-image-width="1080" data-image-height="864">
              <div class="u-container-layout">
                <p class="u-align-center u-custom-font u-text u-text-default u-text-1">집밥도사</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-palette-2-light-3 u-section-2" id="carousel_fa2d">
      <div class="u-clearfix u-sheet u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <p class="u-custom-font u-text u-text-default u-text-grey-80 u-text-1">
          <span style="font-size: 2.25rem;">요리 랭킹</span>
          <span style="font-size: 1rem;"></span>
        </p>
        <img src="images/food1.jpg" alt="" class="u-image u-image-default u-image-1" data-image-width="600" data-image-height="600">
        <div class="u-carousel u-gallery u-layout-carousel u-lightbox u-no-transition u-show-text-none u-gallery-1" data-interval="5000" data-u-ride="carousel" id="carousel-9387">
          <ol class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
            <li data-u-target="#carousel-9387" data-u-slide-to="0" class="u-active u-grey-70 u-shape-circle" style="width: 10px; height: 10px;"></li>
            <li data-u-target="#carousel-9387" data-u-slide-to="1" class="u-grey-70 u-shape-circle" style="width: 10px; height: 10px;"></li>
          </ol>
          <div class="u-carousel-inner u-gallery-inner" role="listbox">
            <div class="u-active u-carousel-item u-gallery-item u-carousel-item-1">
              <div class="u-back-slide" data-image-width="400" data-image-height="268">
                <img class="u-back-image u-expanded" src="images/rank_1.jpg">
              </div>
              <div class="u-over-slide u-over-slide-1">
                <h3 class="u-gallery-heading"></h3>
                <p class="u-gallery-text"></p>
              </div>
            </div>
            <div class="u-carousel-item u-gallery-item u-carousel-item-2">
              <div class="u-back-slide" data-image-width="400" data-image-height="268">
                <img class="u-back-image u-expanded" src="images/rank_2.jpg">
              </div>
              <div class="u-over-slide u-over-slide-2">
                <h3 class="u-gallery-heading"></h3>
                <p class="u-gallery-text"></p>
              </div>
            </div>
          </div>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1" href="#carousel-9387" role="button" data-u-slide="prev">
            <span aria-hidden="true">
              <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
            </span>
            <span class="sr-only">
              <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
            </span>
          </a>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2" href="#carousel-9387" role="button" data-u-slide="next">
            <span aria-hidden="true">
              <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
            </span>
            <span class="sr-only">
              <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
            </span>
          </a>
        </div>
      </div>
    </section>



</body>
<style>
.u-dialog-section-6 {
	min-height: 826px;
}

.u-dialog-section-6 .u-dialog-1 {
	width: 566px;
	min-height: 989px;
	background-image: none;
	margin: 91px auto 60px;
}

.u-dialog-section-6 .u-container-layout-1 {
	padding: 40px 0;
}

.u-dialog-section-6 .u-text-1 {
	font-size: 1.6875rem;
	margin: 0 auto;
}

.u-dialog-section-6 .u-form-1 {
	height: 780px;
	margin: 24px 113px 0 83px;
}

.u-dialog-section-6 .u-form-group-1 {
	width: 100%;
}

.u-dialog-section-6 .u-label-1 {
	font-size: 1rem;
}

.u-dialog-section-6 .u-form-group-2 {
	width: 100%;
}

.u-dialog-section-6 .u-label-2 {
	font-size: 1rem;
}

.u-dialog-section-6 .u-form-group-3 {
	width: 100%;
}

.u-dialog-section-6 .u-label-3 {
	font-size: 1rem;
}

.u-dialog-section-6 .u-form-group-4 {
	width: 100%;
}

.u-dialog-section-6 .u-label-4 {
	font-size: 1rem;
}

.u-dialog-section-6 .u-form-group-5 {
	width: 100%;
}

.u-dialog-section-6 .u-label-5 {
	font-size: 1rem;
}

.u-dialog-section-6 .u-form-group-6 {
	width: 100%;
}

.u-dialog-section-6 .u-label-6 {
	font-size: 1rem;
}

.u-dialog-section-6 .u-form-group-7 {
	width: 100%;
}

.u-dialog-section-6 .u-label-7 {
	font-size: 1rem;
}

.u-dialog-section-6 .u-form-group-8 {
	width: 100%;
}

.u-dialog-section-6 .u-btn-1 {
	width: 100%;
	border-style: solid;
	letter-spacing: 0px;
	font-weight: 700;
	text-transform: uppercase;
}

.u-dialog-section-6 .u-btn-2 {
	font-weight: 700;
	letter-spacing: 0px;
	background-image: none;
	margin: -735px 30px 0 auto;
	padding: 12px 17px 14px 16px;
}

.u-dialog-section-6 .u-icon-1 {
	width: 15px;
	height: 15px;
	left: auto;
	top: 17px;
	position: absolute;
	right: 16px;
}

@media ( max-width : 1199px) {
	.u-dialog-section-6 .u-dialog-1 {
		height: auto;
	}
	.u-dialog-section-6 .u-form-1 {
		width: 400px;
	}
	.u-dialog-section-6 .u-btn-2 {
		border-style: solid;
		margin-top: -735px;
	}
}

@media ( max-width : 991px) {
	.u-dialog-section-6 .u-container-layout-1 {
		padding-bottom: 30px;
	}
}

@media ( max-width : 767px) {
	.u-dialog-section-6 .u-dialog-1 {
		width: 540px;
	}
	.u-dialog-section-6 .u-container-layout-1 {
		padding-top: 30px;
		padding-left: 40px;
		padding-right: 40px;
	}
	.u-dialog-section-6 .u-form-1 {
		margin-left: 70px;
		margin-right: 100px;
	}
	.u-dialog-section-6 .u-btn-2 {
		margin-right: 4px;
	}
}

@media ( max-width : 575px) {
	.u-dialog-section-6 .u-dialog-1 {
		width: 340px;
	}
	.u-dialog-section-6 .u-container-layout-1 {
		padding-top: 40px;
		padding-left: 25px;
		padding-right: 25px;
	}
	.u-dialog-section-6 .u-form-1 {
		height: 152px;
		margin-top: 114px;
		margin-right: initial;
		margin-left: initial;
		width: auto;
	}
	.u-dialog-section-6 .u-btn-2 {
		margin-right: 0;
	}
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous">
	
</script>

<script>
	$("#id_check").click(function() {
		console.log('들어왔나?')
		let userId = $('#signupId').val();
		console.log(userId);
		$.ajax({
			url : "IdCheckService",
			type : "post",
			data : {
				userId : userId
			},
			dataType : 'json',
			success : function(result) {
				console.log(result);
				if (result == 1) {
					alert('index 사용중인 아이디입니다.')
				} else {
					alert('index 사용 가능한 아이디입니다.')
				}
			},
			error : function() {
				console.log("서버요청실패");
			}
		});
	});
</script>
</body>
=======
  
    
    <footer class="u-clearfix u-footer u-grey-70" id="sec-a2b1"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-center-sm u-align-center-xs u-align-left-md u-align-left-xl u-container-style u-layout-cell u-left-cell u-size-20 u-size-20-md u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1"><!--position-->
                  <div data-position="" class="u-position"><!--block-->
                    <div class="u-block">
                      <div class="u-block-container u-clearfix"><!--block_header-->
                        <h5 class="u-block-header u-text"><!--block_header_content--> Block header <!--/block_header_content--></h5><!--/block_header--><!--block_content-->
                        <div class="u-block-content u-text"><!--block_content_content--> Block content. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices. <!--/block_content_content--></div><!--/block_content-->
                      </div>
                    </div><!--/block-->
                  </div><!--/position-->
                </div>
              </div>
              <div class="u-align-center-sm u-align-right-md u-container-style u-layout-cell u-size-20 u-size-20-md u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <a href="https://nicepage.com" class="u-image u-logo u-image-1" data-image-width="80" data-image-height="40">
                    <img src="images/default-logo.png" class="u-logo-image u-logo-image-1">
                  </a>
                </div>
              </div>
              <div class="u-align-center-sm u-align-center-xs u-align-left-md u-align-right-lg u-align-right-xl u-container-style u-layout-cell u-right-cell u-size-20 u-size-20-md u-layout-cell-3">
                <div class="u-container-layout u-valign-bottom u-container-layout-3">
                  <div class="u-social-icons u-spacing-10 u-social-icons-1">
                    <a class="u-social-url" title="facebook" target="_blank" href=""><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-d240"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-d240"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="twitter" target="_blank" href=""><span class="u-icon u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5eb2"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-5eb2"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
            c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
            c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
            c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
            c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="instagram" target="_blank" href=""><span class="u-icon u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ced7"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-ced7"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
            z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
            C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
            c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="linkedin" target="_blank" href=""><span class="u-icon u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f65a"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-f65a"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
            C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
            H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-design" target="_blank">
        <span>Website Design Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/website-builder" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
  </body>

</html>
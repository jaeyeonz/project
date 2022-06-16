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

	<header class="masthead" id = "mainbg"
		style="background-image: url('images/mainImg.jpg')">

		<div class="position-relative recipeOut">
						<a class = "recipe-Out" href="#"><%=mvo.getName()%>님 환영합니다. <a href="Logout"><button
									type="button" class="btn btn-primary">로그아웃</button></a> </a>
					</div>
					<div class = "position-relative row logo">
					<a href="new_Main2.jsp"><img class="logoimg" src="./images/logo.png"/></a>
					</div>
		<div class="container position-relative px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					



				</div>
			</div>
		</div>
	</header>
 <!-- 배너 1 -->
	<div class = "banner1">
	<a href = "FavoriteRecipe?name=<%=mvo.getName()%>&prfr_Ingr1=<%=mvo.getPrfr_Ingr1()%>&prfr_Ingr2=<%=mvo.getPrfr_Ingr2()%>&prfr_Ingr3=<%=mvo.getPrfr_Ingr3()%>"><img src="./images/banner(1).jpg"></a>
	</div>
	
	
	<div class = "banner2">
	<a href = "#"><img src="./images/banner(2).jpg"></a>
	</div>
	



	<!-- ///////////////////////////////content /////////////////////////-->

	
	<!-- Footer-->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts2.js"></script>
</body>

</html>
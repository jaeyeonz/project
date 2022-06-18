<%@page import="cookking4.model.PriceVO"%>
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
<link rel="stylesheet" href="css/PriceSearch.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>

</head>

<body>
	<!-- Navigation-->
	<!-- Page Header-->
	<%
	VO mvo = (VO) session.getAttribute("mvo");
	List<PriceVO> Emartlist = (List<PriceVO>)request.getAttribute("list1");
	List<PriceVO> Lottelist = (List<PriceVO>)request.getAttribute("list2"); 
	List<PriceVO> Homelist = (List<PriceVO>)request.getAttribute("list3"); 
	String idFind = (String)request.getAttribute("idFind");
	%>

	<!-- ////////////////////// header 영역 //////////////////////////////////  -->

	<header class="masthead"
		style="background-image: url('images/recipe_bg2.jpg')">

		<div class="position-relative recipeOut">
						<%-- <a class = "recipe-Out" href="#"><%=mvo.getName()%>님 환영합니다. <a href="Logout"><button
									type="button" class="btn btn-primary">로그아웃</button></a> </a> --%>
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
	<section class="u-clearfix u-palette-4-base u-section-1" id="sec-213c">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-form u-form-1">
          
        </div><!-- <span class="u-icon u-text-white u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1a0b"></use></svg><svg class="u-svg-content" viewBox="0 0 56.966 56.966" x="0px" y="0px" id="svg-1a0b" style="enable-background:new 0 0 56.966 56.966;"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23
	s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92
	c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17
	s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg></span> -->
        <div class="u-container-style u-group u-radius-50 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-table u-table-responsive u-table-1">
              <table class="u-table-entity">
                <colgroup>
                  <col width="33.3%">
                  <col width="33.3%">
                  <col width="33.4%">
                </colgroup>
                <tbody class="u-table-body">
                  <tr style="height: 100px;">
                    <td class="u-align-center  u-table-cell u-table-cell-1">이름</td>
                    <td class="u-align-center  u-table-cell u-table-cell-2">가격</td>
                    <td class="u-align-center  u-table-cell u-table-cell-3">100g당</td>
                  </tr>
                  <!-- 마트가격 가져오기 -->
                  <%
                  for(int i = 0; i< Emartlist.size(); i++){%> 
                  <tr style="height: 100px;">
                    <td class="u-table-cell"><%=Emartlist.get(i).getIngr_name() %></font></td>
                    <td class="u-table-cell"><%=Emartlist.get(i).getPrice() %></td>
                  		<%if(i<5){%>
                    <td class="u-table-cell"><%=Emartlist.get(i).getPrice_100() %></td>
                   <%}else {%>
                    <td class="u-border-1 u-border-white u-table-cell"><%=Emartlist.get(i).getPrice_100() %></td>
                	<%}%>
                  </tr>
                  		<%}%>
                </tbody>
              </table>
            </div>
            <p class=" u-text u-text-1">이마트</p>
            <img class="u-image u-image-default u-image-1" src="image/<%=idFind %>.jpg" alt="" data-image-width="630" data-image-height="425">
          </div>
        </div>
      
        <div class="u-container-style u-group u-radius-50 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-table u-table-responsive u-table-1">
              <table class="u-table-entity">
                <colgroup>
                  <col width="33.3%">
                  <col width="33.3%">
                  <col width="33.4%">
                </colgroup>
                <tbody class="u-table-body">
                  <tr style="height: 100px;">
                    <td class="u-align-center  u-table-cell u-table-cell-1">이름</td>
                    <td class="u-align-center  u-table-cell u-table-cell-2">가격</td>
                    <td class="u-align-center  u-table-cell u-table-cell-3">100g당</td>
                  </tr>
                   <!-- 마트가격 가져오기 -->
                  <%
                  for(int i = 0; i< Lottelist.size(); i++){%> 
                  <tr style="height: 100px;">
                    <td class="u-table-cell"><%=Lottelist.get(i).getIngr_name() %></td>
                    <td class="u-table-cell"><%=Lottelist.get(i).getPrice() %></td>
                  		<%if(i<5){%>
                    <td class="u-table-cell"><%=Lottelist.get(i).getPrice_100() %></td>
                   <%}else {%>
                    <td class="u-border-1 u-border-white u-table-cell"><%=Lottelist.get(i).getPrice_100() %></td>
                	<% 
                   }%>
                  </tr>
                  		<%}%>
                </tbody>
              </table>
            </div>
            <p class=" u-text u-text-1">롯데마트</p>
            <img class="u-image u-image-default u-image-1" src="images/b2e95c81-39cd-ba4c-7bec-4f05e7644db6.jpg" alt="" data-image-width="630" data-image-height="425">
          </div>
        </div>
        <div class="u-container-style u-group u-radius-50 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-table u-table-responsive u-table-1">
              <table class="u-table-entity">
                <colgroup>
                  <col width="33.3%">
                  <col width="33.3%">
                  <col width="33.4%">
                </colgroup>
                <tbody class="u-table-body">
                  <tr style="height: 100px;">
                    <td class="u-align-center  u-table-cell u-table-cell-1">이름</td>
                    <td class="u-align-center  u-table-cell u-table-cell-2">가격</td>
                    <td class="u-align-center  u-table-cell u-table-cell-3">100g당</td>
                  </tr>
                   <%
                  for(int i = 0; i< Homelist.size(); i++){%> 
                  <tr style="height: 100px;">
                    <td class="u-table-cell"><%=Homelist.get(i).getIngr_name() %></td>
                    <td class="u-table-cell"><%=Homelist.get(i).getPrice() %></td>
                  		<%if(i<5){%>
                    <td class="u-table-cell"><%=Homelist.get(i).getPrice_100() %></td>
                   <%}else {%>
                    <td class="u-border-1 u-border-white u-table-cell"><%=Homelist.get(i).getPrice_100() %></td>
                	<% 
                   }%>
                  </tr>
                  		<%}%>
                </tbody>
              </table>
            </div>
            <p class=" u-text u-text-1">홈플러스</p>
            <img class="u-image u-image-default u-image-1" src="images/b2e95c81-39cd-ba4c-7bec-4f05e7644db6.jpg" alt="" data-image-width="630" data-image-height="425">
          </div>
        </div>
      </div>
    </section>

	
	<!-- Footer-->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts2.js"></script>
</body>

</html>

<%@page import="cookking4.model.RecipeVO"%>
<%@page import="java.util.List"%>
<%@page import="cookking4.model.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Clean Blog - Start Bootstrap Theme</title>
    <link rel="icon" type="image/x-icon" href="_assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet"
        type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
        rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles2.css" rel="stylesheet" />
    <link  rel="stylesheet" href="css/star.css" media="screen">
</head>

<body>

<%  VO mvo = (VO)session.getAttribute("mvo"); 
    List<RecipeVO> detailvo = (List<RecipeVO>)request.getAttribute("detailVO");
    String summary = (String)request.getAttribute("summary");
    String name = (String)request.getAttribute("name");
    int recipeNum = (int)request.getAttribute("recipeNum");
%>  	  
    <!-- Page Header-->
    <!-- 요리 메인 사진 -->
    <div class="content">
        <header class="masthead" style="background-image: url('images/background.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="page-heading">
                            <h1><%=name%> 만들기</h1>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
        
        <form action="reviewPoint?recipeNum=<%=recipeNum %>&name=<%=name %>&summary=<%=summary %>" class="mb-3" name="myform" id="myform" method="post" align="center">
			<fieldset>
				<span style="font-size: 3rem; color: #db545a;">레시피에 대한 별점을 선택해주세요</span>
				<br>  				
  				<input type="radio" name="reviewStar" value="5" id="rate1"><label for="rate1">★</label>
				<input type="radio" name="reviewStar" value="4" id="rate2"><label for="rate2">★</label>
				<input type="radio" name="reviewStar" value="3" id="rate3"><label for="rate3">★</label>
				<input type="radio" name="reviewStar" value="2" id="rate4"><label for="rate4">★</label>
				<input type="radio" name="reviewStar" value="1" id="rate5"><label for="rate5">★</label>	
			</fieldset>			
			<input type="submit" name="star" value="별점등록">
		</form>
		<br><br>		
		
        <% if (detailvo != null) {	%>
        <div class="recipeProc">        
            <div class="leftImg">
            	<img id="procPic" src="recipeImg/<%=recipeNum%>.jpg" alt="">
            </div>
            
            <div class="recipeText">
            <div class="rightText">
                <h2 class="post-title"><%=name%></h2>
                <br>
                <h3 class="post-subtitle"><%=summary%></h3>
                <br>
            </div>
            </div>
        </div>
        
        
        <!-- 사진없을 때 -->
        <div class="recipeProc">
            <div class="rightText">
            <br><br>
                <h3 class="post-title">요리순서</h3>
                <h4 class="post-subtitle">
                        <%	for (int i = 0; i < detailvo.size(); i++) {
						                for (int j = 0; j <= i; j++) {
					            %>
					
            					<%	  }				%>
					           <%=detailvo.get(i).getStep_no() + ". " + detailvo.get(i).getCooking_desc()%>
						<br> <%
	 					if (detailvo.get(i).getStep_img_url() != null) {%> 
	 						<img	src="<%=detailvo.get(i).getStep_img_url()%>"><br> 
	 					<% } %>
						<%
						if (detailvo.get(i).getStep_tip() != null) {
						%> <%=detailvo.get(i).getStep_tip()%><br>
					<%	}	%>
					<%	}	%>
 			 <%	}	%>                
                </h4>
            </div>
        </div>
    
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts2.js"></script>
</body>

</html>
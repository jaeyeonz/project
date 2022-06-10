<%@page import="cookking4.model.RecipeVO"%>
<%@page import="java.util.List"%>
<%@page import="cookking4.model.RecipeDAO"%>
<%@page import="cookking4.model.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="오징어 불고기, 마른오징어조림, 오징어 순대">
    <meta name="description" content="">
    <title>레시피</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Recipe.css" media="screen">
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
    <meta property="og:title" content="레시피">
    <meta property="og:type" content="website">
    
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
  </head>
<<<<<<< HEAD
  <%
  RecipeDAO dao = new RecipeDAO();
  List<RecipeVO> list = dao.recipeList();
  %> 
  <div>
  <table id="list" border = "1px">
 
			<thead>
				<tr>
					<td>사진</td>
					<td>제목</td>
					<td>요약</td>
					
				</tr>
			</thead>
			<tbody>
				<%
				for(int i=0; i<list.size(); i++){
				%>
				<div>
				<tr>
					<td><a href ="RecipeDetail.jsp">이미지</td>
					<td><a href ="RecipeDetail.jsp"><%=list.get(i).getRecipe_name()%></td>
					<td><%=list.get(i).getSummary() %></td>
				</tr>
				</div>
				<%
				} 
				%>
		
			</tbody>
		</table>
		 </div>
  <body class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-fe7f"><div class="u-clearfix u-sheet u-sheet-1">
=======
  <body class="u-body u-xl-mode">
  <%  VO mvo = (VO)session.getAttribute("mvo");   %>
  <header class="u-clearfix u-header u-header" id="sec-fe7f"><div class="u-clearfix u-sheet u-sheet-1">
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-6/cookking4.git
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Recipe.jsp" style="padding: 16px 12px;">레시피</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="PriceSearch.jsp" style="padding: 16px 12px;">가격검색</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Refrigerator.jsp" style="padding: 16px 12px;">냉장고</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Recipe.jsp">레시피</a>
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
    <section class="u-clearfix u-palette-4-light-2 u-section-1" id="sec-c505">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-form u-form-1">
          <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-10 u-inner-form" style="padding: 10px" source="email" name="form">
            <div class="u-form-group u-form-group-1">
              <label for="email-2555" class="u-form-control-hidden u-label u-label-1"></label>
              <input type="text" id="email-2555" name="email" class="u-border-4 u-border-white u-input u-input-rectangle u-radius-50 u-white" required="required">
            </div>
            <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-active-grey-90 u-border-4 u-border-active-grey-90 u-border-grey-75 u-border-hover-grey-90 u-btn u-btn-round u-btn-submit u-button-style u-grey-75 u-hover-grey-90 u-radius-50 u-btn-1">
                <br>
              </a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div><span class="u-icon u-icon-rectangle u-text-white u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7494"></use></svg><svg class="u-svg-content" viewBox="0 0 56.966 56.966" x="0px" y="0px" id="svg-7494" style="enable-background:new 0 0 56.966 56.966;"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23
	s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92
	c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17
	s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg></span>
        <div class="u-align-center u-clearfix u-gutter-18 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-size-24-lg u-size-24-xl u-size-29-sm u-size-29-xs u-size-60-md">
                <div class="u-layout-row">
                  <div class="u-align-left u-container-style u-image u-image-round u-layout-cell u-left-cell u-radius-50 u-size-60 u-image-1" src="" data-image-width="463" data-image-height="581">
                    <div class="u-container-layout u-valign-middle u-container-layout-1" src=""></div>
                  </div>
                </div>
              </div>
              <div class="u-size-31-sm u-size-31-xs u-size-36-lg u-size-36-xl u-size-60-md">
                <div class="u-layout-col">
                  <div class="u-align-left u-container-style u-layout-cell u-radius-50 u-right-cell u-shape-round u-size-60 u-white u-layout-cell-2" src="">
                    <div class="u-container-layout u-container-layout-2">
                      <h2 class="u-custom-font u-text u-text-default u-text-1">
                        <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-grey-90 u-btn-2" href="RecipeDetail.jsp" data-page-id="181319731">오징어불고기</a>
                      </h2>
                      <p class="u-custom-font u-text u-text-default u-text-2">오징어로 불고기를 만들어 맛있게 드셔보세요~<br>간단하면서도 쉽게 맛낼 수 있답니다.<br>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="u-align-center u-clearfix u-gutter-18 u-layout-wrap u-layout-wrap-2">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-size-24-lg u-size-24-xl u-size-29-sm u-size-29-xs u-size-60-md">
                <div class="u-layout-row">
                  <div class="u-align-left u-container-style u-image u-image-round u-layout-cell u-left-cell u-radius-50 u-size-60 u-image-2" src="" data-image-width="1500" data-image-height="1125">
                    <div class="u-container-layout u-valign-middle u-container-layout-3" src=""></div>
                  </div>
                </div>
              </div>
              <div class="u-size-31-sm u-size-31-xs u-size-36-lg u-size-36-xl u-size-60-md">
                <div class="u-layout-col">
                  <div class="u-align-left u-container-style u-layout-cell u-radius-50 u-right-cell u-shape-round u-size-60 u-white u-layout-cell-4" src="">
                    <div class="u-container-layout u-container-layout-4">
                      <h2 class="u-custom-font u-text u-text-default u-text-3">마른오징어조림</h2>
                      <p class="u-custom-font u-text u-text-4"> 마른 오징어를 맛있는 양념장에 버무리면&nbsp;<br> 쫄깃함과 양념의 맛이 씹어도 씹어도 질리지 않아요~
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="u-align-center u-clearfix u-gutter-18 u-layout-wrap u-layout-wrap-3">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-size-24-lg u-size-24-xl u-size-29-sm u-size-29-xs u-size-60-md">
                <div class="u-layout-row">
                  <div class="u-align-left u-container-style u-image u-image-round u-layout-cell u-left-cell u-radius-50 u-size-60 u-image-3" src="" data-image-width="2080" data-image-height="2080">
                    <div class="u-container-layout u-valign-middle u-container-layout-5" src=""></div>
                  </div>
                </div>
              </div>
              <div class="u-size-31-sm u-size-31-xs u-size-36-lg u-size-36-xl u-size-60-md">
                <div class="u-layout-col">
                  <div class="u-align-left u-container-style u-layout-cell u-radius-50 u-right-cell u-shape-round u-size-60 u-white u-layout-cell-6" src="">
                    <div class="u-container-layout u-container-layout-6">
                      <h2 class="u-custom-font u-text u-text-default u-text-5">오징어 순대</h2>
                      <p class="u-custom-font u-text u-text-6"> 오징어로 순대를 만든다?&nbsp;<br> 아주 색다른 음식이죠.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
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
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  </body>
</html>
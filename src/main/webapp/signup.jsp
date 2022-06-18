<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Coming Soon - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap"
            rel="stylesheet" />
        <link
            href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap"
            rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
    </head>

    <body>
    
    
        <!-- Background Video-->
        <video class="bg-video" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
            <source src="_assets/mp4/bg.mp4" type="video/mp4" />
        </video>
        <!-- Masthead-->
        <div class="masthead">
        	
            <div class="masthead-content text-white">
                <div class="container-fluid px-4 px-lg-0">
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- * * SB Forms Contact Form * *-->
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- This form is pre-integrated with SB Forms.-->
                    <!-- To make this form functional, sign up at-->
                    <!-- https://startbootstrap.com/solution/contact-forms-->
                    <!-- to get an API token!-->
                    <h1 class="lh-1 mb-4" style="font-family:'SCDream6';">회원가입</h1>
            <button id = "id_check" class = "btn btn-primary">중복검사</button>
                        <!-- Email address input-->
                        <div class="row input-group-newsletter">
                    <form action="JoinService" method="post" data-sb-form-api-token="API_TOKEN" id="joinform">
                            <div class="col"><label for="id" class="form-label">ID</label>
                                <input name = "Log_id" class="form-control" id="signupId" type="text" placeholder="Enter ID..."
                                    aria-label="Enter ID..." data-sb-validations="required,email" />
                                    
                            </div>
                            <div class="col"><label for="password" class="form-label">Password</label>
                                <input name = "pw" type="password" class="form-control" id="password"
                                    placeholder="Enter password..." aria-label="Enter password...">
                            </div>
                            <div class="col"><label for="name" class="form-label">name</label>
                                <input name = "name" type="text" class="form-control" id="name"
                                    placeholder="Enter name..." aria-label="Enter name...">
                            </div>
                            <div class="col"><label for="fav-ingr1" class="form-label">선호식재료1</label>
                                <input name ="prfr_Ingr1" type="text" class="form-control" id="fav-ingr1"
                                    placeholder="Enter 선호식재료1..." aria-label="Enter 선호식재료1...">
                            </div>
                            <div class="col"><label for="fav-ingr2" class="form-label">선호식재료2</label>
                                <input name ="prfr_Ingr2" type="text" class="form-control" id="fav-ingr2"
                                    placeholder="Enter 선호식재료2..." aria-label="Enter 선호식재료2...">
                            </div>
                            <div class="col"><label for="fav-ingr3" class="form-label">선호식재료3</label>
                                <input name ="prfr_Ingr3" type="text" class="form-control" id="fav-ingr3"
                                    placeholder="Enter 선호식재료3..." aria-label="Enter 선호식재료3...">
                            </div>
                            <div class="col-auto"><button class="btn btn-primary btn-submit" type="submit">Submit</button></div>
                            </form>
                            
                        </div>

                        <!-- <div class="invalid-feedback mt-2" data-sb-feedback="email:required">An email is required.</div>
                         -->
                        <!-- <div class="invalid-feedback mt-2" data-sb-feedback="email:email">Email is not valid.</div> -->
                        <!-- Submit success message-->
                        <!---->
                        <!-- This is what your users will see when the form-->
                        <!-- has successfully submitted-->
                        <!-- <div class="d-none" id="submitSuccessMessage">
                            <div class="text-center mb-3 mt-2">
                                <div class="fw-bolder">Form submission successful!</div>
                                To activate this form, sign up at
                                <br />
                                <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                            </div>
                        </div> -->
                        <!-- Submit error message-->
                        <!---->
                        <!-- This is what your users will see when there is-->
                        <!-- an error submitting the form-->
                        <!-- <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3 mt-2">Error sending message!</div></div> -->
                    
                </div>
            </div>
        </div>
        <!-- Social Icons-->
        <!-- For more icon options, visit https://fontawesome.com/icons?d=gallery&p=2&s=brands-->
        <!-- <div class="social-icons">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="btn btn-dark m-3" href="#!"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-dark m-3" href="#!"><i class="fab fa-instagram"></i></a>
            </div>
        </div> -->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
    	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
    	crossorigin="anonymous"></script>
    
		<!-- 아이디 중복체크 Ajax -->
		<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
		<script>
			$("#id_check").click(function() {
				console.log('들어왔나?')
				let Log_id = $('#signupId').val();
				console.log(Log_id);
				
				$.ajax({
					url : "IdCheckService",
					type : "post",
					data : {
						Log_id : Log_id
					},
					dataType : 'json',
					success : function(result) {
					//	console.log(result);
						if (result == 1) {
							alert('사용중인 아이디입니다.')
							
						} else {
							alert('사용 가능한 아이디입니다.')
							
						}
					},
					error : function() {
						console.log("서버요청실패");
					}
				});
			});
		</script>        
    </body>

    </html>

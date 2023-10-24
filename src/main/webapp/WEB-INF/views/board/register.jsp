<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>Sticky Footer Navbar Template · Bootstrap v4.6</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/sticky-footer-navbar/">

    

    <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<!-- 
    Favicons
<link rel="apple-touch-icon" href="/docs/4.6/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.6/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.6/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.6/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">
 -->

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/resources/sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">
    
<header>
  <!-- Fixed navbar -->
	<%@include file="/WEB-INF/views/comm/header.jsp" %>
</header>

<!-- Begin page content -->
<main role="main" class="flex-shrink-0">
  <div class="container">
    <section>
    	<div class="row"> <!-- row는 하위 div를 12개를 사용 할 수 있다. -->
    		<!-- <div class="col-해상도-숫자(하위 div에서 사용하는 사이즈. 총합이 12가 되어야 한다.)"></div> -->
    		<div class="col-md-12">

						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title mt-5">게시판</h3>
							</div>

							<!-- 절대경로 /board/register -->
							<form role="form" method="post" action="./register">
								<div class="box-body">
									<div class="form-group">
										<label for="title">Title</label> <input
											type="text" class="form-control" name="title" id="title"
											placeholder="제목 입력...">
									</div>
									<div class="form-group">
										<label for="writer">WRITER</label> <input
											type="text" class="form-control" name="writer"
											id="writer" placeholder="작성자 입력...">
									</div>
									<div class="form-group">
										<label>Content</label>
										<textarea class="form-control" rows="3" name="content"
											placeholder="내용 입력..."></textarea>
									</div>
								</div>	

								<div class="box-footer">
									<button type="submit" class="btn btn-primary">저장</button>
									<button type="reset" id="btn_cancel" class="btn btn-primary">취소</button>
								</div>
							</form>
						</div>

					</div>
    	</div>
    </section>
  </div>
</main>

<footer class="footer mt-auto py-3">
	<%@include file="/WEB-INF/views/comm/footer.jsp" %>
</footer>

<%@include file="/WEB-INF/views/comm/plug-in.jsp" %>
      

	
	<script>
		document.getElementById("btn_cancel").addEventListener("click", fn_cancel);

		function fn_cancel() {
			//alert("목록");
			location.href = "/board/list";
		}
	</script>
  </body>
</html>

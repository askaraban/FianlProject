<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
.tapBtn {
	flex-wrap: wrap;
	display: flex;
}	

.tapBtn .btn-line {
	height: auto;
	padding-top: 0.3125rem;
	padding-bottom: 0.3125rem;
	margin-bottom: 0.625rem;
	margin-right: 1.25rem;
	font-size: 1.05rem;
	letter-spacing: -0.0175rem;
	position: relative;
	font-weight: bolder;
	color: #000;
}

.btn-line {
  padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
  border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
  background-color: var(--bs-btn-bg);
}

.tapBtn .btn-line.on {
	color:#2196f3;
}

</style>
	
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Event - main</title>

    <!-- PLUGINS CSS STYLE -->
    <link href='../assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='../assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href='../assets/plugins/listtyicons/style.css' rel='stylesheet'>
    <link href='../assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>
    <link href='../assets/plugins/selectric/selectric.css' rel='stylesheet'>

    <!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="../assets/css/style.css" rel="stylesheet" id="option_style">

    <!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

    <!-- FAVICON -->
    <link href="../assets/img/favicon.png" rel="shortcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
   <!-- 관리자 템플릿 -->
  <!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="../assets_admin/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<!-- <link href="../assets_admin/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" /> -->
	<link href="../assets_admin/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="../assets_admin/css/animate.min.css" rel="stylesheet" />
	<!-- <link href="../assets_admin/css/style.min.css" rel="stylesheet" /> -->
	<link href="../assets_admin/css/style-responsive.min.css" rel="stylesheet" />
	<link href="../assets_admin/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL CSS STYLE ================== -->
    <link href="../assets_admin/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
    <link href="../assets_admin/plugins/bootstrap-calendar/css/bootstrap_calendar.css" rel="stylesheet" />
    <link href="../assets_admin/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
    <link href="../assets_admin/plugins/morris/morris.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="../assets_admin/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->

  </head>

  <body id="body" class="up-scroll">
<!-- ====================================
———	CATEGORY GRID FULL
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<!-- Search Result Bar -->
	    <div class="search-result-bar">
			<div class="col-md-5">
				<h2 class="fw-bolder mb-6">이벤트</h2>
				<h5 class="mb-8">스위프트에어 이벤트와 함께 특별한 여정을 시작해보세요:)</h5>
				<div class="d-flex align-items-center">
					<div class="tapBtn">
						<button type="button" onclick="location.href='event_detail.html'" class="btn-line on">
						진행중
						</button>
						<button class="btn-line">
						종료됨
						</button>
						
					</div>
				</div>
			</div>
    	</div>

		<div class="row">
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/BKsale.jpg" src="../assets/img/event/BKsale.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.25 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								당장 떠나기 좋은 
								<br> 
								방콕 노선 임박 특가
							</a>
						</h5>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/SFOsaleMarch.jpg" src="../assets/img/event/SFOsaleMarch.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.13 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								스위프트에어가 준비한 
								<br> 
								샌프란시스코 20% 할인
							</a>
						</h5>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/TKPEsale.jpg" src="../assets/img/event/TKPEsale.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.07 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								설레는 봄, 벚꽃특가 
								<br> 
								도쿄 노선 15% 할인
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/Event.jpg" src="../assets/img/event/Event.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.01 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								누적 탑승객 100만명 기념
								<br>
								회원가입 이벤트
							</a>
						</h5>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/SFOdeals.jpg" src="../assets/img/event/SFOdeals.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.02.14 ~ 2024.02.21</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								스위프트에어
								<br>
								샌프란시스코 신규 취항 특가
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/TK1yr.jpg" src="../assets/img/event/TK1yr.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2023.12.21 ~ 2023.12.27</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								나리타 노선
								<br> 
								취항 1주년 기념 특가
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/X-mas.jpg" src="../assets/img/event/X-mas.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2023.11.08 ~ 2023.11.15</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								크리스마스를 제대로 즐기는 방법?
								<br>
								스위프트에어와 떠나자
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/FRA.jpg" src="../assets/img/event/FRA.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2023.10.30 ~ 2023.11.06</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								에어프레미아 특가
								<br>
								유럽 여행의 시작
							</a>
						</h5>
					</div>
				</div>
			</div>
		</div>
    <!-- ====================================
———	pagination
===================================== -->
<section class="my-5">
  <nav aria-label="Page navigation example">
    <ul class="pagination" style="justify-content: center;">
      <li class="page-item me-2">
        <a class="page-link" href="javascript:void(0)">
          <i class="fa fa-angle-left" aria-hidden="true"></i>
        </a>
      </li>
      <li class="page-item active me-2"><a class="page-link" href="javascript:void(0)">1</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">2</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">3</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">4</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">5</a></li>
      <li class="page-item">
        <a class="page-link" href="javascript:void(0)">
          <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
      </li>
    </ul>
  </nav>
</section>

	</div>
</section>


     <!-- JAVASCRIPTS -->
    <script src='../assets/plugins/jquery/jquery-3.4.1.min.js'></script>
    <script src='../assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
    <script src='../assets/plugins/menuzord/js/menuzord.js'></script>

    <script src='../assets/plugins/selectric/jquery.selectric.min.js'></script>
    
    <script src='../assets/plugins/smoothscroll/SmoothScroll.js'></script>
   
    <script>
      var d = new Date();
      var year = d.getFullYear();
      document.getElementById("copy-year").innerHTML = year;
    </script>
    <script src='../assets/js/listty.js'></script>
  </body>
</html>

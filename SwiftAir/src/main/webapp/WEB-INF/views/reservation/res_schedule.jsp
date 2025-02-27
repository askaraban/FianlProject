<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">

<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="">Home</a></li>
        <li class="breadcrumb-item">일정</li>
      </ul>
    </nav>
  </div>
</section>

<c:if test="${not empty alertMessage}">
    <script>
        alert("${alertMessage}");
    </script>
</c:if>

<!-- ====================================
———	BANNER SECTION (TRAVEL)
===================================== -->
<section class="py-7 py-md-10" style="height: 624px;">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- 항공권예매 검색박스 -->
        <div class="search-box-2">
          <form class="row g-2 justify-content-center" id="resScheduleSellection" action="<c:url value="/reservation/seatgrade1" />" method="POST">

            <div class="form-group col-md-3 col-lg-2 mb-0">
              <div class="select-default">
         		 <select class="select-location" name="resDeparture">
		            <option>출발지</option>
		            <option value="인천">서울/인천(ICN)</option>
		            <option value="로스앤젤레스">로스앤젤레스(LAX)</option>
		            <option value="방콕">방콕(BKK)</option>
		            <option value="나리타">도쿄/나리타(NRT)</option>
		          </select>
        		</div>
            </div>
            
             <div class="form-group col-md-3 col-lg-2 mb-0">
              <div class="select-default">
		          <select class="select-location" name="resDestination">
		            <option>도착지</option>
		            <option value="인천">서울/인천(ICN)</option>
		            <option value="로스앤젤레스">로스앤젤레스(LAX)</option>
		            <option value="방콕">방콕(BKK)</option>
		            <option value="나리타">도쿄/나리타(NRT)</option>
		          </select>
		        </div>
            </div>

			<div class="form-group col-md-3 col-lg-4 mb-0">
				<input type="text" class="form-control double-date" id="resDuration" required>
				
				<input type="hidden" name="resDepartDate" id="resDepartDate">
				<input type="hidden" name="resReturnDate" id="resReturnDate">
			</div>
			
            <div class="form-group col-md-3 col-lg-2 mb-0">
				<input type="text" class="form-control" id="resNumofPassengers" placeholder="탑승인원 : " data-bs-toggle="modal" data-bs-target="#exampleModal" required>
				<input type="hidden" name="resPassengerCnt" id="resPassengerCnt">
            </div>
            
            <div class="form-group col-md-3 col-lg-2 mb-0">
              <button type="submit" class="btn btn-primary w-100">항공권 검색
                <i class="fas fa-search" aria-hidden="true"></i>
              </button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">탑승인원을 선택해주세요.</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<div class="form-group mb-6">
      		<div class="d-flex justify-content-between align-items-center flex-wrap mb-5">
      			<span class="font-weight-bold">탑승인원 : </span>
      				<div class="count-input">
      					<a class="incr-btn" data-action="decrease" href="#">–</a>
      						<input class="quantity" type="text" id="passengerCnt" value="1" min="1" max="10">
                		<a class="incr-btn" data-action="increase" href="#">+</a>
              		</div>
            </div>
         </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" id="applyPpl">적용</button>
      </div>
    </div>
  </div>
</div>

<!-- 모달 실행이 안되서 jQuery 스크립트 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
// 모달이 열릴 때마다 실행
$('#exampleModal').on('show.bs.modal', function (e) {
    // 모달 외부 입력값을 가져와서 모달 내 입력값으로 설정
    var resNumofPassengersValue = $('#resNumofPassengers').val();
    $('#passengerCnt').val(resNumofPassengersValue);
});

// 적용 버튼 클릭 시 실행
$('#applyPpl').click(function() {
    // 모달 내 입력값을 가져와서 모달 외부 입력값으로 설정
    var passengerCntValue = $('#passengerCnt').val();
    $('#resNumofPassengers').val('탑승인원 : ' + passengerCntValue);
    $('#resPassengerCnt').val(passengerCntValue);
    
    $('#exampleModal').modal('hide');
	
    //여정 정보 끼워넣음..
    var resDurationValue = $('#resDuration').val();
	var values = resDurationValue.split(" - ")
	
	var value1 = values[0];
	var value2 = values[1];
	$('#resDepartDate').val(value1);
	$('#resReturnDate').val(value2);
});
</script>

</body>

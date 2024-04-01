<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style type="text/css">

 .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }

#join label {
	width: 150px;
	text-align: right;
	float: left;
	margin-right: 10px;
}

#join ul li {
	list-style-type: none;
	margin: 15px 0;
}

#fs {
	text-align: center;
	
}



.button {
	background-color: navy;
	color: white;

}

.nice-select {
	clear: none !important;
	height: 32px !important;
	line-height: 32px !important;
}


</style>


<form id="join" action="" method="post">


<div class="container" style="text-align: left;" >
	<div class="input-form-backgroud row" style="margin-left: 176px !important;">
    	<div class="input-form col-md-12 mx-auto">    
      
	<ul>
		<li>
			<label for="id">아이디: </label>
			<input type="text" name="id" id="id">
			
		</li>
		<li>
			<label for="passwd">비밀번호: </label>
			<input type="password" name="passwd" id="passwd">
			
		</li>
		
		
		<li>
			<label for="name">이름: </label>
			<input type="text" name="name" id="name">
			
		</li>
		
		<li>
			<label>성별: </label>
    	 	 <input type="radio" name="gender" value="man">남
		  	<input type="radio" name="gender" value="woman">여
		</li>
		
		<li>
			<label for="firstname">영문 성: </label>
			<input type="text" name="firstname" id="firstname">
		</li>
		
		<li>
			<label for="lastname">영문 이름: </label>
			<input type="text" name="lastname" id="lastname">
			
		</li>
		
		<li>
			<label for="email">이메일: </label>
			<input type="text" name="email" id="email">
			
		</li>
		<li>
			<label for="mobile2">전화번호: </label>
			<select name="mobile1">
				<option value="010" selected>&nbsp;010&nbsp;</option>
				<option value="011">&nbsp;011&nbsp;</option>
				<option value="016">&nbsp;016&nbsp;</option>
				<option value="017">&nbsp;017&nbsp;</option>
				<option value="018">&nbsp;018&nbsp;</option>
				<option value="019">&nbsp;019&nbsp;</option>
			</select>
			- <input type="text" name="mobile2" id="mobile2" size="4" maxlength="4">
			- <input type="text" name="mobile3" id="mobile3" size="4" maxlength="4">
			
		</li>
		
		<li>
			<label for="country">국적: </label>
			<input type="text" name="country" id="country">
		</li>
		
		<li>
			<label for="passport">여권번호: </label>
			<input type="text" name="passport" id="passport">
		</li>
		
		<li>
			<label for="passportexp">여권만료일: </label>
			<input type="text" name="passportexp" id="passportexp">
		</li>
		
	</ul>
</form>


<div id="fs">
	<button type="submit" class="button">회원가입</button>
</div>

		</div>
	</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    $('#join').submit(function(e) {
    	   var idRegex = /^[a-zA-Z]\w{5,19}$/g;
           var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
           var emailRegex = /^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
           
           var userId = $('#id').val();
           var password = $('#passwd').val();
           var email = $('email').val();
    	 
        if ($('#id').val() === "") {
            alert("아이디를 입력하세요.");
            $('#id').focus();
            return false;
        }
        

        if (!idRegex.test(userId)) {
            alert("아이디는 영문자로 시작하는 영문자와 숫자를 포함한 6~20자리로 입력해야 합니다.");
            $('#id').focus();
            return false;
        }
        
        if ($('#passwd').val() === "") {
            alert("비밀번호를 입력하세요.");
            $('#passwd').focus();
            return false;
        }
        
        if (!passwordRegex.test(password)) {
            alert("비밀번호는 영문자, 숫자, 특수문자를 각각 하나 이상 포함한 6~20자리로 입력해야 합니다.");
            $('#passwd').focus();
            return false;
        }
        
        
        if ($('#name').val() === "") {
            alert("이름을 입력하세요.");
            $('#name').focus();
            return false;
        }
        if ($('#email').val() === "") {
            alert("이메일을 입력하세요.");
            $('#email').focus();
            return false;
        }
        
        if (!emailRegex.test(email)) {
            alert("이메일 형식에 맞지 않습니다.");
            $('#email').focus();
            return false;
        }
        var mobile2 = $('#mobile2').val();
        var mobile3 = $('#mobile3').val();
        if (mobile2 === "" || mobile3 === "") {
            alert("전화번호를 입력하세요.");
            if(mobile2 === "") $('#mobile2').focus();
            else $('#mobile3').focus();
            return false;
        }
       
       
        return true;
    });
});
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Start</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function checkID(){
		var id = $("#userId").val()
		alert('check '+id);
		$.ajax(
			{
	         type:"get",
	         url:"/rest/member/check.do",
	         contentType: "application/json",
	         data :{"userId":id},
		     success:function (data,textStatus){
		    	 obj = JSON.parse(data);
		    	 if(obj.result == "true"){
		    		 alert(data);
			    	 $('#message').text("사용가능한 아이디 입니다.");	 
		    	 }
		    	 else{
		    		 alert("중복된 아이디 입니다.");
		    		 $('#message').text(id);	
		    	 }
		     },
		     error:function(data,textStatus){
		        alert("에러가 발생했습니다.");
		     },
		     complete:function(data,textStatus){
		    	 
		     }
		  }	
		);
		return false;
	}
</script>
</head>
<body>
	<form action="" method="">
		<input type="text" name="userId" id="userId">
		<input type="button" value="확인" onclick="checkID()"><br>
		<span id="message"></span><br>
		<input type="password" name="pwd" id="pwd">
		<input type="submit" value="login">
	</form>
</body>
</html>







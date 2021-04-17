<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
	body{
	font-family: NanumGothic !important; 
	}
      .w3-section{
          display:grid;
            justify-content: stretch;
            grid-template-columns: repeat(2, 1fr);
            grid-column-gap: 10px;
        }
         .info_select {
     	height:40px;
     }
        .w3-black{
          padding:7px 15px;
            margin: 0 0 20px 0;
            float: left;
          position: relative;
          left: 45%;
        }
        
        #infoeditB{
        border-radius: 10px;
    	padding: 5px 15px;
    }
    
    form input,select,button{
    font-weight:600;}
    </style>
    
</head>
<body>


<div class="w3-container">
      
      <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
    
          <div class="w3-center"><br>
            <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
          </div>
        
          <div class="w3-container">
          <span class="w3-quarter" style='font-weight:bold;font-size:27px;'>기본정보</span>
          </div>
          <div class="w3-container">
            <div class="w3-section">
              <div>
              <label>이름</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter Name" name="userName" id="userName">
              </div>
              <div>
              <label>이메일</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter a valid email address" name="email" id="email" readonly>
              </div>
              <div>
              <label>핸드폰 번호</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter your phone" name="phoneNum" id="phoneNum">
              </div>
              <div>
              <label>지역</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter your phone" name="city" id="city">
              </div>
              
            </div>
            <button id="infoeditB" class="w3-button w3-black" type="submit">수정</button>
        	</div>
        </div>
      </div>
      <!-- 모달 창 끝 -->
      
    </div>
    <script>
      var user_id;
	  function userInfo(){
		var userinfo;
		$.ajax({ //user 정보 가져오기
			url : '<%=request.getContextPath()%>/userInformation',
			type : "get",
			async: false,
			success: function(data){
				userinfo = data;
				console.log(userinfo); 

				$( 'input#userName' ).val( userinfo.name );
				$( 'input[name="email"]' ).val( userinfo.email_address );
				$( 'input#phoneNum' ).val( userinfo.phone_number );
				user_id=userinfo.id;
				$('#id01').css("display","block");
			}
		
		});
	  }

	$(document).ready(function(){
		$("#infoeditB").click(function(){	
			var name=$( 'input#userName' ).val();
			var email=$( 'input[name="email"]' ).val();
			var phone=$( 'input#phoneNum' ).val();
			$.ajax({ //user 정보 가져오기
				url : '<%=request.getContextPath()%>/info/modify',
				type : "POST",
				data:{"id":user_id,"name":name,"email_address":email,"phone_number":phone},
				traditional:true,
				success: function(data){
					alert("개인정보가 수정되었습니다");
					console.log("user정보 수정"); 
				},
                error:function(request,status,error){
	               	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            }
			
			});
		});
	});
    
      // Get the modal
      var modal = $('#id01');
      
      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
        if (event.target == modal) {
        	$('#id01').style.display = "none";
        }
      }
    
</script>

</body>
</html>
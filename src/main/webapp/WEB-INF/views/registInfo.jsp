<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
    	font-weight:600;
    }
    
    .w3-modal{
    	display:block !important;
    }
    </style>
    
</head>
<body>


<div class="w3-container">
      
      <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
    
          <div class="w3-container">
          <span class="w3-quarter" style='font-weight:bold;font-size:27px;'>기본정보</span>
          </div>
          <div class="w3-container">
          <form id="userJoinForm" class="w3-container" action="<%=request.getContextPath()%>/google/regist" method="POST">
            <div class="w3-section">
            	<input type="hidden" name="id" id="id" value="${sessionScope.ID}">
              <div>
              <label>이름</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter Name" name="name" id="userName" value="${sessionScope.Name}" required>
              </div>
              <div>
              <label>이메일</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter a valid email address" name="email_address" id="email" value="${sessionScope.email}" readonly>
              </div>
              <div>
              <label>핸드폰 번호</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter your phone" name="phone_number" id="phoneNum" reqiored>
              </div>
              <div>
              <label>지역</label>
              <input class="w3-input w3-border w3-margin-bottom w3-light-grey" type="text" placeholder="Enter your phone" name="city" id="city">
              </div>
              
              
            </div>
            <button id="infoeditB" class="w3-button w3-black" type="submit">등록</button>
            </form>
        	</div>
        
        </div>
      </div>
      <!-- 모달 창 끝 -->
      
    </div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>H</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css">
    <link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
    
    <style type="text/css">
    .modal2 label,.modal label {  
    	display: block;
    	margin-top: 20px;
    	letter-spacing: 2px;
    }
    .modal2 form,.modal form {
    	margin: 0 auto;
    	width: 459px;
    }
    .modal2 input,.modal input{
    	width: 100%;
    	height: 27px;
    	background-color: #efefef;
    	border-radius: 6px;
    	border: 1px solid #dedede; 
    	padding: 10px;
    	margin-top: 10px;
    	font-size: 0.9em;
    	color: #3a3a3a; 
    }
    .modal2 input:focus,.modal input:focus{
    		border: 1px solid #97d6eb;
    	}
	
    #submit{
    	width: 100%;
    	height: 35px;
    	text-align: center;
    	border: none;
    	margin-top: 20px;
    	cursor: pointer;
    }
    #submit:hover{
    	color: #fff;
    	background-color: #216282;
    	opacity: 0.9;
    }
	.modal2,.modal {
        position: fixed;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        opacity: 0;
        visibility: hidden;
        transform: scale(1.1);
        transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s;
    }
    .modal-content2,.modal-content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: white;
        padding: 1rem 1.5rem;
        width: 500px;
        height: 180px;
        border-radius: 0.5rem;
    }
    .close-button2,.close-button {
        float: right;
        width: 1.5rem;
        line-height: 1.5rem;
        text-align: center;
        cursor: pointer;
        border-radius: 0.25rem;
        background-color: lightgray;
    }
    .close-button2:hover,.close-button:hover {
        background-color: darkgray;
    }
    .show-modal2,.show-modal {
        opacity: 1;
        visibility: visible;
        transform: scale(1.0);
        transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
    }
    
    </style>
</head>
<body>
	<header>
        <div class="wrapper clearfix">
          <a href="<%=request.getContextPath()%>/home"><h2><span id="yellowtitle">One</span>하나</h2></a>
          <nav>
          	<ul>
	        	<li><a href="#">포트폴리오 탐색</a></li>

	            <li><a class="maker" href="#">포트폴리오 만들기</a></li>
	              
	            <li><a href="<%=request.getContextPath()%>/myPage">마이페이지</a></li>
	      	</ul>
            
          </nav>
            <img class="imageicon" src="<%=request.getContextPath()%>/resources/images/smile.png" width="47" alt="My Image">
            <h4><a href="<%=request.getContextPath()%>/logout">로그아웃</a></h4>
        </div>
      </header>
      
      <!-- 팝업 될 레이어 --> 
     <div class="modal2"> 
         <div class="modal-content2"> 
             <span class="close-button2">&times;</span> 
             <form action="make_portfolio" method="POST"> 
               <label>포트폴리오 이름 : </label> 
               <input type="text" id="portfolio_name2" name="portfolio_name" placeholder="portfolio_name" required="required"> 
             	<input type="submit" id="submit" value="다음">
             </form> 
         </div> 
     </div>
     
     <script type="text/javascript"> 
     	var modal2 = document.querySelector(".modal2"); 
     	var closeButton2 = document.querySelector(".close-button2"); 
     	var submitButton2 = document.querySelector("#portfolio_name2");
     	var trigger2 = document.querySelector(".maker"); 

     	function toggleModal2() {
	        modal2.classList.toggle("show-modal2");
	    }

	    function windowOnClick2(event) {
	        if (event.target === modal2) {
	            toggleModal2();
	        }
	    }

     	trigger2.addEventListener("click", toggleModal2); 
        closeButton2.addEventListener("click", toggleModal2); 
        window.addEventListener("click", windowOnClick2);
	 </script>
     
</body>
</html>
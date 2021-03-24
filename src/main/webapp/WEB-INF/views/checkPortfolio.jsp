<!--템플릿 jsp에 개인정보를 집어넣은 페이지-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
  
  	<!-- jQuery -->  	
  	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="LOGIN">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Check</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css">
	<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/checkPortfolio.css" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/mypage.js?ver=1"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">

      <!--doughnut chart-->
	<script src="https://rendro.github.io/easy-pie-chart/javascripts/jquery.easy-pie-chart.js"></script>
    <script src="http://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
	<!-- 한글 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <style>
    	.table-content {
		  display: flex;
		  flex-direction: row;
		}
		
		.item {
		  flex: 1;
		}
		
		.top_btn{
			width:100px;
			border-radius:10px;
		}
    </style>
    
  </head>

<body class="u-body">

<header class="u-clearfix u-header u-header" id="sec-bbf7">
<div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
        <div class="table-content">
        <div class="item"></div>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font" style="font-size: 1rem; letter-spacing: 0px; font-family: NanumGothic; font-weight: 800;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                	<li class="u-nav-item">
                		<a class="u-button-style u-nav-link maker"  style="padding: 10px 20px;"  href="<%=request.getContextPath()%>/portfolio_board">Portfolio구경가기</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY페이지</a>
					</li>
					<c:set var="admin" value="${admin}" />
					<c:if test="${admin == 1}">
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>
					</li>
					</c:if>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>
					</li>
				</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
          <div class="u-custom-menu u-nav-container">
           <ul class="u-custom-font u-nav u-unstyled u-nav-1">
            	<li class="u-nav-item">
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/portfolio_board"">Portfolio구경가기</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY페이지</a>	
				</li>
				<c:set var="admin" value="${admin }" />
				<c:if test="${admin == 1}">
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>	
				</li>
				</c:if>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>	
				</li>
			</ul>
          </div>
        </nav>
        </div>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="home.html" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header>
	
	 <%
	 String templateURL ="/WEB-INF/views/templates/"+request.getAttribute("temName")+".jsp";
	 %>
	 <section class="u-clearfix u-white u-section-1" id="sec-fad6" style="height:100%; padding-bottom:130px;">
	 	<div class="wrap" style="width:100%; position:relative; background-color:transparent; margin-left:140px;">
	 		<div>
	 			<div class="table-content" style="padding:0 35px 0 26px;">
	 				<div class="item" style="float:left; height:97px;">
	 					<!-- 포트폴리오 이름넣기 -->
		 				<h4 style="line-height: 10px; font-weight:bold;">해린이의 포트폴리오</h4>
		 				<!-- 포트폴리오 url넣기 -->
		 				<button style="border-color:transparent; background-color:#F7C046;color:white; border-radius:20px; font-size:12px;">복사</button>
		 				<div style="text-decoration:underline; display:inline;">http://walab.handong.edu/wanana/fdjshfj3849</div>
	 				</div>
	 				<div id="button_wrap" style="float:left; padding-top:10px;">
						<div style="flex-direction:row; display:inline;" >
					    	<button type="button" class="top_btn print" name="print" id="printB" onclick="javascript:printB();">출력 </button>
					    	<button type="button" class="top_btn edit" name="edit" id="editB" onclick="javascript:editB();" >수정 </button>
					    	<button type="button" class="top_btn delete" name="delete" id="deleteB" onclick="javascript:deleteB();">삭제 </button>
					    	<form id="deleteForm" name="deleteForm" class="deleteForm"  action="deletePortfolio" method="POST">
					    			<input type="hidden" id="select_portID" name="temName" value="${temName}"/>
									<input type="hidden" id="select_portID" name="select_portID" value="${portfolio_ID}"/>
							</form>
				    	</div>	
			    	</div>	
	 			</div>
	 			<div id="printSection 1page_preview" style="float:left; margin-right: 35px; padding-left: 22px;">
	 			 <!-- <page size="A4" layout="portrait">  -->
				 <page size="A4">
		     		<jsp:include page="<%=templateURL%>" flush="true"/>
		     	</page>
				</div>
	 		</div>
	 	</div>
	 </section>
	 
	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-custom-font u-small-text u-text u-text-variant u-text-1">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b>
        </p>
      </div></footer>
    <script>
$(document).ready(function(){
  
  	//경로 구하는 법 
	function getContextPath() {
	    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1));
	};

	var portURL = ${template_info};
	var whole_addr = $(location).attr('href');
   	var addr_slice = whole_addr.split('/');
   	var addr = addr_slice[0]+"/"+addr_slice[1]+"/"+addr_slice[2]+"/"+addr_slice[3] + "/portfolioView/";

	$("#urlAddress").val(addr+portURL[0].port_url );

	$('#copyB').click(function(){
 	   
		$(this).siblings("#urlAddress").attr("type","text");
		$(this).siblings("#urlAddress").select();
		document.execCommand('copy');
		$(this).siblings("#urlAddress").attr("type","hidden");

		
		alert('URL 주소가 복사 되었습니다');	

		});	    
});//document ready end

	//session 정보 가져오기 
	function sessionChecking() {
		var check_sessionID="";
		$.ajax({ 
		      url : '<%=request.getContextPath()%>/sessionCheck',
		  	  type : "POST",
		  	  dataType : 'json',
		  	  async: false,
		  	  success: function(data){
		  		
		  		console.log("세션 확인 성공");
		  		check_sessionID=data;
		  	  },error:function(jqXHR, textStatus, errorThrown){
	            console.log("세션 에러 발생~~ \n" + textStatus + " : " + errorThrown);
	        }
		 });
	
		if(check_sessionID == null || check_sessionID == ""){
	    	//session 값이 없을 시 
	    	console.log("session end");
	    	alert("세션이 만료되었습니다. 다시 로그인해주세요:)");
	    	location.href = "login";
	    	return 0;
		}else
			return 1;
	}
	//session 만료 확인
	sessionChecking();
function printB() {
		var resultYN = sessionChecking();
	if(resultYN == 1){
		 	var initBody = document.body.innerHTML;
		 	var g_oBeforeBody = document.getElementById('printSection').innerHTML;
		 	html2canvas(document.querySelector("#printSection"),{scrollY: -window.scrollY, 
		 	   scale: 1}).then(canvas => {  
		 	    var dataURL = canvas.toDataURL();
		 	    var width = canvas.width;
		 	    var printWindow = window.open("");
		 	   var data=document.querySelector("#printSection");
		       var divHeight = data.clientHeight
		       var divWidth = data.clientWidth
		       var ratio = divHeight / divWidth;
		       var height = ratio * width;
		       
		 	    $(printWindow.document.body)
		 	      .html("<img id='Image' src=" + dataURL + " width='" + width + "' height='" + height + "'></img>")
		 	      .ready(function() {
		 	      printWindow.focus();
		 	      printWindow.print();
		 	      printWindow.close();
		 	    });
		 	  });
             /* window.onbeforeprint = function(){
                document.body.innerHTML = g_oBeforeBody;
            }
            window.onafterprint = function(){
                document.body.innerHTML = initBody;
            } 
            setTimeout(function() {
	            window.print(); 
	            window.close();
            }, 1000);  */
	 }
       }
function deleteB() {
			var resultYN = sessionChecking();
			
			if(resultYN == 1){
			if (confirm("정말 삭제하시겠습니까??") == true){    //확인
			   		     document.deleteForm.submit();
			}else{   //취소
			   		     return false;
			}
	   		 }
    }
function editB() {
		var resultYN = sessionChecking();
			
			if(resultYN == 1){
	   	  		$("#deleteForm").attr("action","editPortfolio");
			$("#deleteForm").submit();
			}
	}//edit 버튼


		   
	   		
</script>
</body>
</html>
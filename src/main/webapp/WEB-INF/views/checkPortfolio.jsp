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
    
	<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
	
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/checkPortfolio.css" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/mypage.js?ver=1"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">

    <script src="http://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
    <!-- IE10, 11 지원을 위한 es6-promise -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.1.1/es6-promise.auto.js"></script>
	<!-- 한글 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <style>
    	.table-content {
		  display: flex;
		  flex-direction: row;
		}
		/* 
		.item {
		  flex: 1;
		} */
		
		.printSection .container{
			margin-left: 7%;
    		margin-top: 3%;
		}
		.top_btn{
			width:100px;
			border-radius:10px;
		}
    </style>
      
    <script>
$(document).ready(function(){
	
  	//경로 구하는 법 
	function getContextPath() {
	    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1));
	};

	var portURL = ${portfolioUrl};
/* 	var whole_addr = $(location).attr('href');
   	var addr_slice = whole_addr.split('/');
   	var addr = addr_slice[0]+"/"+addr_slice[1]+"/"+addr_slice[2]+"/"+addr_slice[3] + "/portfolioView/";
 */
  $(".portURL").text(portURL);
	$("input[name='portURL']").val(portURL);

	$('#copyB').click(function(){
		
		
		/* $(this).siblings("#portURL").find().select();
		document.execCommand('copy');
		$(this).siblings("#portURL").attr("type","hidden"); */

		
		var portfolioURL = $(this).siblings(".portURL").text();
		console.log("URL : " + portfolioURL);
		const t = document.createElement("textarea");
		  document.body.appendChild(t);
		  t.value = portfolioURL;
		  t.select();
		  document.execCommand('copy');
		  document.body.removeChild(t);
		
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
		 	var g_oBeforeBody = document.querySelector('.printSection .container').innerHTML;
		 	html2canvas(document.querySelector(".printSection .container"),{scrollY: -window.scrollY, 
		 	   scale: 1}).then(function(canvas) {  
		 	   var dataURL = canvas.toDataURL();

		 	   var width = "1200px";
		 	   var printWindow = window.open("");
		 	   var data=document.querySelector(".printSection .container");
		       var divHeight = data.clientHeight
		       var divWidth = data.clientWidth
		       var ratio = divHeight / divWidth;
		       var height = ratio * width;
		       
		 	    $(printWindow.document.body)
		 	      .html("<img id='img' src=" + dataURL + " width='" + width + "' height='" + height + "' style='margin-top:60px; border:1px solid #EAEAEA'></img>")
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
    
  </head>

<body class="u-body">
<jsp:include page="/WEB-INF/views/basic/header.jsp"/>
	
	 <%
	 String templateURL ="/WEB-INF/views/templates/"+request.getAttribute("temName")+".jsp";
	 %>
	 <section class="u-clearfix u-grey-5 u-section-1" id="sec-fad6" style="height:100%; padding-bottom:130px;">
	 	<div class="u-clearfix u-sheet u-sheet-1">
	 		<div>
	 			<div class="table-content" style="padding:0 35px 0 26px;">
	 				<div class="item" style="float:left; height:97px;">
	 					<!-- 포트폴리오 이름넣기 -->
	 					<c:set var="title" value="${title}" />
		 				<h4 style="line-height: 10px; font-weight:bold;">${title}</h4>
		 				<!-- 포트폴리오 url넣기 -->
		 				
		 				<div style=" display:flex;"><button id="copyB" style="border-color:transparent; background-color:#F7C046;color:white; border-radius:20px; font-size:12px;width: 52px;">복사</button><span class="portURL" style="text-decoration:underline;margin-left:3%;"></span><input name="portURL" id="portURL" style="border:none;" type="hidden" value="" readonly></div>
	 				</div>
	 				<div id="button_wrap" style="float: right;padding-top:10px;margin-left: 20%;min-width: 40%;">
						<div style="flex-direction:row; display:inline;" >
					    	<button type="button" class="top_btn print" name="print" id="printB" onclick="javascript:printB();">출력 </button>
					    	<button type="button" class="top_btn edit" name="edit" id="editB" onclick="javascript:editB();" >수정 </button>
					    	<button type="button" class="top_btn delete" name="delete" id="deleteB" onclick="javascript:deleteB();">삭제 </button>
					    	<form id="deleteForm" name="deleteForm" class="deleteForm"  action="deletePortfolio" method="POST">
					    			<input type="hidden" id="select_temName" name="temName" value="${temName}"/>
									<input type="hidden" id="select_portID" name="select_portID" value="${portfolio_ID}"/>
							</form>
				    	</div>	
			    	</div>	
	 			</div>
	 			<div class="printSection" id="1page_preview">
	 			 <!-- <page size="A4" layout="portrait">  -->
				 <page size="A4">
				 
		     		<jsp:include page="<%=templateURL%>" flush="true"/>
		     	</page>
				</div>
	 		</div>
	 	</div>
	 </section>
	 
	<jsp:include page="/WEB-INF/views/basic/footer.jsp"/>

</body>
</html>
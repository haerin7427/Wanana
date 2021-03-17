<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/checkPortfolio.css" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
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
		
    </style>
</head>
<body>

		 <%
	 String templateURL ="/WEB-INF/views/templates/"+request.getAttribute("temName")+".jsp";
	 %>
	 <main class="portfolioBox" style="padding:10px;">

	 	
        <div style="height:700px; display:inline; padding-top:20px; height:20px;" >
        
			<div class="table-content" style="line-height:20px; margin-top:10px;">        
			
				<!-- 포트폴리오주인 -->
	        	<div class="item" style="padding:15px; display:inline; padding-left:25px;">
	        		<span><h2 style="display:inline; font-weight:bold;">이주연</h2></span>
	        		<span><p style="font-size:23px; display:inline;">님의 포트폴리오</p></span>
	       	 	</div>
	        
		        <div>
		        	<!-- date -->
		        	<div style="display:inline; padding-right:20px;"><p style="display:inline;">수정일: <span>2021-02-15</span></p></div>
		        
		         	<!-- x 버튼 -->
		        	<button id="close_btn" style="border:0; outline:0; cursor:pointer; margin-right:20px;"><p style="font-size:25px; font-weight:bold;">X</p></button>
		        </div>
	        </div>
        
 
        
        	<div class="wrap" style="width:100%; position:auto; border:0; margin:0 15px 0 15px;">
	 			<div style="display:block; margin:0 auto;">
		 			
			 			<!-- <page size="A4" layout="portrait">  -->
						<page size="A4">
				     		<jsp:include page="<%=templateURL%>" flush="true"/>
				     	</page>
	
	 			</div>
	 		</div>
        
        
        
     	<div class="table-content" style="margin: 10px 15px 0 20px;">     	
     		<div style="display:inline;">
		 		<!-- 좋아요버튼  -->
			 	<button type="button" class="good" name="good" style="border:0; outline:0; margin-right:10px; cursor:pointer;"><img src="resources/images/like.png" width="30" height="auto" alt=""></button>
			 	
			 	<!-- 쪽지보내기버튼  -->
			 	<button type="button" class="message" name="message" style="border:0; outline:0; cursor:pointer;"><img src="resources/images/message.png" width="30" height="auto" alt=""></button>
			</div>
			<!-- 좋아요 개수  -->
			<div style="display:inline; text-align:right;" class="item" >
				<p style="display:inline; font-size:23px; font-weight:bold; color:#b3b3b3">좋아요 <span>0</span>개</p>
			</div>
		</div>
		 
      </div>

	 	
	 	
	 </main>
	 <script>
		 $(document).ready(function () {
			var isLike=${checkLike};
			if(isLike>0)
				$('.btn').addClass('liked');
			var likeCnt=${likeCnt};
			$('.likeCnt').text(likeCnt);
			var portID=${portfolio_ID};
			$(".btn-like").click(function(){
				var cnt=$('.likeCnt').text();
				$.ajax({
					url:"<%=request.getContextPath()%>/clickHeart",
					type:'POST',
					traditional:true,
					data:{"portfolio_id":portID},
					success:function(data){
						if(data==true)
							$('.likeCnt').text(parseInt(cnt)+1);
						else
							$('.likeCnt').text(parseInt(cnt)-1);
					},
					error:function(request,status,error){
		            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		            }
				});
			});
		 });
		 
	 </script>
	 
</body>
</html>
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
  	<!--doughnut chart-->
    <script src="https://rendro.github.io/easy-pie-chart/javascripts/jquery.easy-pie-chart.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="LOGIN">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Check</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css">
	<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/checkPortfolio.css" media="screen">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/likeBtn.css?ver=8">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/likeBtn.js"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
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
	 <main class="portfolioBox" style="padding: 10px;width: 900px; height: 700px;overflow: auto;">

	 	
        <div style="height:700px; display:inline; padding-top:20px" >
        
			<div class="table-content" style="line-height:20px; margin-top:10px;">        
			
				<!-- 포트폴리오주인 -->
	        	<div class="item" style="padding:15px; display:inline; padding-left:25px;">
	        		<span><h2 style="display:inline; font-weight:bold;" class="portUser"></h2></span>
	       	 	</div>
	        
		        <div>
		        	<!-- date -->
		        	<div style="display:inline; padding-right:20px;"><p style="display:inline;">등록일: <span class="regTime"></span></p></div>
		        
		         	<!-- x 버튼 -->
		        	<button id="close_btn" style="border:0; outline:0; cursor:pointer; margin-right:20px;"><p style="font-size:25px; font-weight:bold;">X</p></button>
		        </div>
	        </div>
        
        
        	<div class="wras" style="position: relative;width: 100%; height:auto;">
	 			<div id="1page_preview" style="/* position: absolute; */width: 100%;overflow:auto;height: 550px;">
			 			<!-- <page size="A4" layout="portrait">  -->
						<page size="A4">
				     		<jsp:include page="<%=templateURL%>" flush="true"/>
				     	</page>
	
	 			</div>
	 		</div>
        
        
     	<div class="table-content" style="margin: 10px 15px 0 20px;">     	
     		<div style="display:inline;">
		 		<!-- 좋아요버튼  -->
			 	<!-- <button type="button" class="good" name="good" style="border:0; outline:0; margin-right:10px; cursor:pointer;"><img src="resources/images/like.png" width="30" height="auto" alt=""></button> -->
			 	<button class="btn good btn-like"  style="border:0; outline:0;">
			    <span class="btn-icon btn--icon-defaul like">
			        <span class="fa fa-heart" style="font-size:30px"></span>
			    </span>
				</button>
			 	<!-- 쪽지보내기버튼  -->
			 	<button type="button" class="message" name="message" style="border:0; outline:0; cursor:pointer;">
					<span class="btn-icon btn--icon-default">
			        	<span class="fa fa-envelope-o" aria-hidden="true" style="font-size:30px"></span>
			   	 	</span>
				</button>
			</div>
			<!-- 좋아요 개수  -->
			<div style="display:inline; text-align:right;" class="item" >
				<p style="display:inline; font-size:23px; font-weight:bold; color:#b3b3b3">좋아요 <span class="likeCnt">0</span>개</p>
			</div>
		</div>
		 
      </div>
	 	
	 </main>
	 <script>
		 $(document).ready(function () {
			var isLike=${checkLike};
			var likeCnt=${likeCnt};
			var regDate=${regDate};
			var portUser=${portUser};
			if(isLike>0){
				$('.btn').addClass('liked');
			}
			$('.likeCnt').text(likeCnt);
			$('.portUser').text(portUser.portfolioName);
			console.log("regDate: "+regDate.regDate);
			$('.regTime').text(regDate.regDate);
			var portID=${portfolio_ID};
			$(".btn-like").click(function(){
				var cnt=$('.likeCnt').text();
				$.ajax({
					url:"<%=request.getContextPath()%>/clickHeart",
					type:'POST',
					traditional:true,
					data:{"portfolio_id":portID},
					success:function(data){
						if(data==true){
							$('.likeCnt').text(parseInt(cnt)+1);
						}
						else{
							$('.likeCnt').text(parseInt(cnt)-1);
						}
					},
					error:function(request,status,error){
		            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		            }
				});
			});

			$(".message").click(function(){
				var id=portUser.userId;
				var name=portUser.portUser;
				if("${sessionScope.ID}" != id){
					$.ajax({
						url:"createChat.do",
						data:{
							userName:"${sessionScope.Name}",
							userId:"${sessionScope.ID}",
							receiverId:id
						},
						type:"post",
						success:function(data){
							// 채팅방이 닫혀있고, 채팅 리스트가 닫혀있다면
				            if($('.chatContainer').hasClass("display-none") && $('.chatListContainer').hasClass('display-none')){
				            	// 리스트를 연다
				                $('.chatListContainer').toggleClass('display-none');
				             	// 채팅 방 목록을 불러온다.
				                getRoomList();		
				                // 해당 채팅 방으로 들어간다.
				                $('.userNameId:contains('+name+')').parent().trigger("click");
				            }
							// 채팅 리스트가 열려 있다면
				            else if(!$('.chatListContainer').hasClass('display-none')){
				                // 해당 채팅 방으로 들어간다.
				                $('.userNameId:contains('+name+')').parent().trigger("click");
				            }
				            else{
				            	alert("이미 채팅방이 열려 있습니다.");
				            }
						}
					});
					
		            return false;
					}
			});
		 });
		 
	 </script>
	 
</body>
</html>
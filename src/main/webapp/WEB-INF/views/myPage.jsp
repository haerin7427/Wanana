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
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="LOGIN">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>myPage</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/myPage.css" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/mypage.js?ver=1"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=NanumGothic:400,700,800">
   
    <style type="text/css">
    	
    	.makeshort{
    		height: 700px;
    	}
    	.makeshort2{
    		height:250px;
    		overflow: auto;
    	}
    	.changecolor{
    		color: #D6A630;
    	}
    	html, body {
			width: 100%; height: 100%;
		}
    </style>
    
    
  </head>
  <body class="u-body">
<jsp:include page="/WEB-INF/views/basic/header.jsp"/>
    <section class="u-clearfix u-grey-5 u-section-1" id="sec-428b">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-14 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout fixsize" style="margin-top: -40px;">
            <div class="u-layout-row" style="size:100px;">
              <div class="u-size-14-xl u-size-16-lg u-size-16-md u-size-16-sm u-size-16-xs makeshort">
                <div class="u-layout-col">
                  <div class="u-container-style u-gradient u-layout-cell u-size-60 u-layout-cell-1">
                    <div class="u-container-layout u-valign-bottom-lg u-valign-bottom-md u-valign-bottom-xl u-container-layout-1">
                      <div class="u-container-style u-expanded-width u-group u-group-1">
                        <div class="u-container-layout u-container-layout-2" style="margin-top: -60px; margin-bottom:-80px;">
                          <p class="u-align-left u-custom-font u-text u-text-1" style="font-size:26px;">${sessionScope.Name} 님</p>
                          <p class="u-align-left u-custom-font u-text u-text-custom-color-3 u-text-2">안녕하​세​요!</p>
                          <div class="u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-xl u-group u-image u-radius-28 u-shape-round u-image-1" data-image-width="472" data-image-height="725">
                            <div class="u-container-layout u-valign-bottom-lg u-valign-bottom-md u-valign-bottom-sm u-valign-bottom-xs u-container-layout-3">
                              <p class="u-align-left u-custom-font u-text u-text-custom-color-2 u-text-3">WELCOME</p>
                              <p class="u-align-left u-custom-font u-text u-text-grey-50 u-text-4" style="font-size:15px;">${sessionScope.Name}&nbsp;님</p>
                              <img src="<%=request.getContextPath()%>/resources/images/21.png" alt="" class="u-image u-image-default u-image-2" data-image-width="242" data-image-height="275">
                              <p class="u-align-center u-custom-font u-enable-responsive u-text u-text-5">
                                <span class="u-text-custom-color-1">One</span>하나
                              </p>
                            </div>
                          </div>
                          <a href="javascript:userInfo()" class="u-btn u-btn-round u-button-style u-custom-color-3 u-custom-font u-hover-custom-color-4 u-radius-50 u-btn-1">내 정보 수정</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-size-44-lg u-size-44-md u-size-44-sm u-size-44-xs u-size-46-xl">
                <div class="u-layout-col">
                  <div class="u-container-style u-layout-cell u-size-30 u-white u-layout-cell-2">
                    <div class="u-container-layout u-valign-middle u-container-layout-4">
                      <p class="u-align-left u-custom-font u-text u-text-6">포트폴리오 보관함</p>
                    </div>
                  </div>
                  <div class="u-container-style u-layout-cell u-size-30 u-white u-layout-cell-3">
                    <div class="u-container-layout u-container-layout-5">
                    
                     <c:set var="port_count" value="0"/>
                     
                     <c:forEach items="${portfolio_list}" var="portfolio">
			          <c:set var="port_count" value="${port_count + 1}"/>
			         </c:forEach>
                    
                      <h6 class="u-custom-font u-text u-text-7">현재 포트폴리오가 <span class="changecolor">${port_count}개</span> 있습니다.</h6>
                      <div class="u-border-2 u-border-grey-5 u-container-style u-expanded-width u-group u-radius-21 u-shape-round u-group-3 makeshort2"> <!-- 포트폴리오 리스트 div -->
                        <div class="u-container-layout u-container-layout-6">
                          
                          <div style="height:25px;"></div>
                          
                          <div style="margin-left:15px;">
                          <div id="portCount" style="float:left; width: 173px; height: 150px; margin-left:10px; background-color:#D6D6D6; margin-right:7px; text-align: center; line-height: 120px; border-radius:10px; margin-bottom:5px;" <c:if test="${port_count >= 5}" var="portfolio"> onClick="createAlert();" </c:if> <c:if test="${port_count < 5}" var="portfolio"> data-href="<%=request.getContextPath()%>/portfolio_one" data-page-id="266091356" </c:if>>	
                              <p style="color:black;" class="newPort">+ 새로만들기</p>
                          </div>
                          
                          <c:forEach items="${portfolio_list}" var="portfolio">
				            <div style="float:left; width: 180px; height: 130px; margin-left:10px; margin-bottom: 30px;">	
				            	<button class="select_port" id="${portfolio.id}" style="border-radius:5px; height: 150px; border: transparent"> 
				            		<div style="width: 160px; height: 105px;">
				            			<img src="<%=request.getContextPath()%>/resources/images/color${portfolio.color}.png"  style="max-width: auto; height: 100%;"> 
				            		</div>  
				            		<div style="height:30px;">${portfolio.title}</div>
				            		<p class="update_time" style="font-size:10px; margin-top:-8px;"><fmt:formatDate value="${portfolio.update_date}" pattern = "YYYY-MM-dd"/></p> 
				            	</button>
				            	<form id="checkForm" class="checkForm" action="checkPortfolio" method="POST">
				            		<input type="hidden" id="select_portID" name="select_portID" value=""/>
				            	</form>
				            	
				            	<script>
			
				            	$(document).ready(function() {
				                     
				            	   	  	$(".select_port").click(function() {
					            	   	  	
				            	   	  	document.getElementById('select_portID').value = this.id;
				            	   	  	$("#checkForm").submit();
				            		});
				            	 });
				            	
				            	</script>
				            
				            </div>
				            </c:forEach>  
				            </div> 
                          
                        </div>
                        
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <jsp:include page="/WEB-INF/views/userInfo.jsp"/>
    <jsp:include page="/WEB-INF/views/chat/talk.jsp" />
    <jsp:include page="/WEB-INF/views/basic/footer.jsp"/>
    <section class="u-backlink u-clearfix u-grey-80" style="height:2px;">
    </section>
  </body>
</html>
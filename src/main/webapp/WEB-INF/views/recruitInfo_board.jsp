<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    
    <title>JobInfoHome</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/recruit_home.css?ver=<%=System.currentTimeMillis()%>" media="screen">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
	
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js"></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js"></script>
        <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/List.js?ver=1"></script>
  </head>
  <body class="u-body">
  
<jsp:include page="/WEB-INF/views/basic/header.jsp"/>
    <section class="u-clearfix u-section-1" id="sec-cd98">
      <div class="u-clearfix u-sheet u-valign-bottom-lg u-valign-middle-xs u-sheet-1">
        <div class="u-container-style u-expanded-width u-group u-palette-1-light-3 u-group-1">
          <div class="u-container-layout u-valign-top-md u-valign-top-xs u-container-layout-1">
            <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-2">
              <div class="u-container-layout u-valign-middle-xs u-container-layout-2">
                <h2 class="u-text u-text-1 tema">테마별 찾기</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="jobList u-list u-repeater u-list-1" id="jobListBody">
          <!-- 직업분류 들어가는 div -->
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="carousel_400e">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-sheet-1">
        <h2 class="u-align-left u-text u-text-1">총 <span style="font-weight: 700;" id="countJob">0</span>개의 결과가 있습니다.
        </h2>
        <div class="u-expanded-width u-list u-repeater u-list-1" id="jobDetailBody">
          <!-- 직업 들어가는 div -->
        </div>
      </div>
    </section>
    
    <form id='jobForm' action='jobDetail/' method='POST'>
    	<input type='hidden' id='selectJobCode' name='jobCode' value=''/>
    </form>
    
    <jsp:include page="/WEB-INF/views/basic/footer.jsp"/>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
  </body>
  
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jobData.js?ver=<%=System.currentTimeMillis()%>"></script>
    
</html>
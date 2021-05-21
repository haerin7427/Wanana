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
    <title>관리자페이지</title>
    
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    
    <style>
    	*{
			box-sizing: border-box;
			list-style: none;
		}
    
    	.table-content {
		  display: flex;
		  flex-direction: row;
		}
		
		.item {
		  flex: 1;
		}
		#moreContent {
	margin-right: auto;
	margin-left: auto;
}
		body{
			background: #f5f5f5;
		}
		
		.sidebar{
			position: fixed;
			top: 140px;
			left: 0;
			width: 250px;
			height: 40%;
			background: #E1C058;
			margin-left:140px;
			font-family: NanumGothic;
			font-weight: bold;
		}
		
		.sidebar ul li a{
			display: block;
			padding: 12px 25px;
			border-bottom: 1px solid #DDA710;
			color: #0e94d4;
			transition: all 0.2s ease;
		}
		
		.sidebar ul li a .icon{
			font-size: 18px;
			vertical-align: middle;
			transition: background 0.2s ease;
		}
		
		.sidebar ul li a .text{
			margin-left: 10px;
			color: #fff;
			text-transform: uppercase;
			letter-spacing: 2px;
		}
		
		.sidebar ul li a:hover{
			background: #DDA710;
			color: black;
		}
		
		
		.main_container{
			height:570px;
			overflow:auto;
			margin-top: 0px;
			margin-left: 210px;
			padding-left: 25px;
			width: calc(100% - 170px);
		}
		
		.main_container .content{
			background: #fff;
			padding: 25px;
			margin-bottom: 25px;
			text-align: justify;
		}
		
		.askDelete{
		color: #808080 !important; 
		}
		
		.pagination {
    display: -ms-flexbox;
    display: flex;
    padding-left: 0;
    list-style: none;
    border-radius: .25rem;
    width: fit-content;
    margin-left: auto;
    margin-right: auto;
    }
    .pagination>li {
    display: inline;
}
.pagination>li:last-child>a, .pagination>li:last-child>span {
    border-bottom-right-radius: 4px;
    border-top-right-radius: 4px;
}
.pagination>li:first-child>a, .pagination>li:first-child>span {
    margin-left: 0;
    border-bottom-left-radius: 4px;
    border-top-left-radius: 4px;
}
.pagination>li>a, .pagination>li>span {
    position: relative;
    float: left;
    padding: 6px 12px;
    line-height: 1.42857143;
    text-decoration: none;
    color: #888888;
    background-color: #fff;
    border: 1px solid #ddd;
    margin-left: -1px;
}

		
    </style>
    
    <script type="text/javascript">

	 $(document).ready(function(){
		 
		 var UserInfo = ${userData};
		 var page = ${pageN} -1;

		 var searchOption = ${searchOptionView};
		 var keyword = ${keywordView};

		 for(var i = 0; i < UserInfo.length;i++){
			 var no = ( page * ${perPageN}) + i+1;
			 //var no = i+1;
			 var sectionTag = $('<tr style="height: 33px;" id="user_'+UserInfo[i].id+'"></tr>'); 
			 var userNo = $('<td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">'+(i+1)+'</td>');
			 var userName = $('<td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">'+UserInfo[i].name+'</td>');
			 var userPhone = $('<td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">'+UserInfo[i].phone+'</td>');
			 var userEmail = $('<td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">'+UserInfo[i].email+'</td>');
			 var deleteButton = $('<td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell"><a class="askDelete"><img style="width: 20px;" src="/onepage/resources/images/delete2.png"></a><input type="hidden" value="'+UserInfo[i].id+'"></td>');
			 
			 
			 $('#mangeBody').append(sectionTag);
			 $('#user_'+UserInfo[i].id).append(userNo);
			 $('#user_'+UserInfo[i].id).append(userName);
			 $('#user_'+UserInfo[i].id).append(userPhone);
			 $('#user_'+UserInfo[i].id).append(userEmail);
			 $('#user_'+UserInfo[i].id).append(deleteButton);
			 }//user list 만들기 끝

			 

	      //탈퇴처리 - modal창 열기
	        $(".askDelete").click(function () {
		        $('#deleteUser').text($(this).parent().siblings('.userName').text());
		        $("#deleteUserID").val($(this).siblings('input').val());
	        	  $("#modal").fadeIn(300);
	        	$("#deleteModal").fadeIn(300);
		        });

	        $("#modal, #notDeleteB").on('click',function(){
	        	  $("#modal").fadeOut(300);
	        	  $("#deleteModal").fadeOut(300);
	        	});

	        $("#deleteB").on('click',function(){
		       console.log("삭제");
	        	  $("#userDeleteForm").submit();
	        	});

	     // select change,
  	        $('.filters').on( 'change', function() {
      	        console.log($(this).attr("id"));
      	        console.log($(this).val());
					$("#searchType").val($(this).attr("id"));
					$("#keyword").val($(this).val());
					$(".form-inline").submit();
  	        });

		 }); // $(document).ready End
		 
  
    </script>
    
  </head>

<body class="u-body">
<jsp:include page="/WEB-INF/views/basic/header.jsp"/>
	
	 <section class="u-clearfix u-white u-section-1" id="sec-fad6" style="height:100%;">
	 	<div class="wrapper hover_collapse">
			
		
			<div class="sidebar">
				<div class="sidebar_inner">
				<ul>
					<li>
						<a href="#">
							<span class="text">회원정보</span>
						</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/admin/manage">
							<span class="text">관리자계정</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="text">공지사항</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="text">고객문의</span>
						</a>
					</li>
				</ul>
				</div>
			</div>
		
			<div class="main_container">
				<div style="border-bottom: 1px solid #DDA710;">
					<h4>회원정보</h4>
				</div>
				<div style="padding: 10px 0 10px 0; font-weight:bold;">
					총 회원 수 : ${count}명 
				</div>
				<section class="u-align-center u-clearfix u-section-3" id="sec-6f13"  style="overflow:hidden;">
			      <div class="u-clearfix u-sheet u-sheet-1" style="overflow:hidden;">
			        <div class="u-table u-table-responsive u-table-1"  style="overflow:hidden;">
			          <table class="u-table-entity u-table-entity-1" style="overflow:hidden;">

			            <thead class="u-grey-50 u-table-header u-table-header-1" style="font-size:12px;">
			              <tr style="height: 36px;">
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 80px;"></th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 120px;">이름</th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 150px;">번호</th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 240px;">이메일</th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell">강제탈퇴</th>
			              </tr>
			            </thead>
			            <tbody class="u-table-body u-table-body-1" id="mangeBody">
			              
			            </tbody>
			          </table>
			        </div>
			      </div>
			    </section>
			    
			    <div id="moreContent">  
	         	 <ul class="pagination">
			    <c:if test="${pageMaker.prev}">
			    <c:set var="page" value="${param.page}"/>
			    <c:if test="${page eq null}">
			    	<c:set var="page" value="1"/>
			    </c:if>
			    <li>
			        <a href='<%=request.getContextPath()%>/manage?page=${pageMaker.startPage-1}'>&laquo;</a>
			    </li>
			    </c:if>
			    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			    <li>
				    <c:choose>
				    	<c:when test="${page eq idx}">
			        	<a style="background: #bbb; color: white;" href='<%=request.getContextPath()%>/manage?page=${idx}'>${idx}</a>
			    	</c:when>
			    	<c:otherwise>
			    		<a href='<%=request.getContextPath()%>/manage?page=${idx}'>${idx}</a>
			    	</c:otherwise>
			    	</c:choose>
			    </li>
			    </c:forEach>
			    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			    <li>
			        <a href='<%=request.getContextPath()%>/manage?page=${pageMaker.endPage+1}'>&raquo;</a>
			    </li>
			    </c:if>
		  </ul>
		  </div>
			</div>
		</div>

	 </section>
	 
	 
	<jsp:include page="/WEB-INF/views/basic/footer.jsp"/>
</body>

</html>
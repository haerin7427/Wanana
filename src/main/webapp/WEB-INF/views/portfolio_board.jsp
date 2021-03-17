<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>portfolios</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css?ver=14" media="screen">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/portfolios.css?ver=4" media="screen">
     <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
   <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=NanumGothic:400,700,800">   
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}</script>
    <meta property="og:title" content="portfolios">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
    <script type="text/javascript">
	    $(document).ready(function () {
		    /* portfolio info */
		    var port_info = ${portinfo};

		    
	       <%--  <!-- 포트폴리오 1 -->
	          <div class="u-blog-post u-container-style u-repeater-item">
	            <div class="u-container-layout u-similar-container u-valign-middle-sm u-valign-middle-xs u-valign-top-lg u-valign-top-md u-valign-top-xl u-container-layout-1">
	              <img src="<%=request.getContextPath()%>/resources/images/1.jpeg" alt="" class="u-blog-control u-expanded-width u-image u-image-round u-radius-21 u-image-1">
	              <div class="u-blog-control u-post-content u-text u-text-1">Sample small text. Lorem ipsum dolor sit amet.</div>
	              <div class="u-blog-control u-metadata u-text-grey-40 u-metadata-1"><span class="u-meta-date u-meta-icon">Mon Feb 01 2021</span></div>
	            </div>
	          </div> --%>

		    for(var i = 0; i < port_info.length; i++){
			    var portDiv = $('<div id="1page_portID_'+port_info[i].port_id+'" class="u-blog-post u-container-style u-repeater-item"><div class="u-container-layout u-similar-container u-valign-middle-sm u-valign-middle-xs u-valign-top-lg u-valign-top-md u-valign-top-xl u-container-layout-1"></div></div>');
			    $("#1page_portBoard").append(portDiv);
			    var portImg = $('<img src="${pageContext.request.contextPath}/resources/images/template'+port_info[i].port_temId+'.png" alt="" class="u-blog-control u-expanded-width u-image u-image-round u-radius-21 u-image-1 1page_portImg">');
			    var portTitle = $('<div class="u-blog-control u-post-content u-text u-text-1">'+port_info[i].port_title+'</div> ');
			    var portDate = $('<div class="u-blog-control u-metadata u-text-grey-40 u-metadata-1"><span class="u-meta-date u-meta-icon">'+port_info[i].port_date+'</span></div>');
			    var portHidden = $('<input type="hidden" name="1page_portfolioID" value="'+port_info[i].port_id+'">');
			    var portIsVerticle = $('<input type="hidden" name="1page_portfolioIsVerticle" value="'+port_info[i].isVerticle+'">');
			    $("#1page_portID_" + port_info[i].port_id).children().append(portImg);
			    $("#1page_portID_" + port_info[i].port_id).children().append(portTitle);
			    $("#1page_portID_" + port_info[i].port_id).children().append(portDate);
			    $("#1page_portID_" + port_info[i].port_id).children().append(portHidden);

			}


			/* 좋아요 수에 따른 포트폴리오 가져오기 */
		    var likePort = ${likePort};
		    for(var i = 0; i < 2; i++){
		    	var portDiv = $('<div id="1page_likePortID_'+likePort[i].id+'" class="u-effect-fade u-gallery-item likePorts1"></div>');
		    	$(".1page_like1").append(portDiv);
		    	var portTitle = $('<div style="font-size:1em;">'+likePort[i].title+'</div> ');
			    var portDate = $('<div class="u-text-grey-40" style="float:right; font-size:0.7em; padding-right:2%;"><span class="u-meta-date u-meta-icon">'+moment(likePort[i].update_date).format('YYYY.MM.DD')+'</span></div>');
		    	var portImg = $('<img src="${pageContext.request.contextPath}/resources/images/template'+likePort[i].template_id+'.png" alt="" class="u-blog-control u-expanded-width u-image u-image-round u-radius-21 u-image-1 1page_portImg">');
			    var portLike=$('<div> 좋아요 : '+likePort[i].like+'개</div> ');
			    var portHidden = $('<input type="hidden" name="1page_portfolioID" value="'+likePort[i].id+'">');
			    var portIsVerticle = $('<input type="hidden" name="1page_portfolioIsVerticle" value="'+likePort[i].isVerticle+'">');

			    $("#1page_likePortID_" + likePort[i].id).append(portTitle);
			    $("#1page_likePortID_" + likePort[i].id).append(portDate);
			    $("#1page_likePortID_" + likePort[i].id).append(portImg);
			    $("#1page_likePortID_" + likePort[i].id).append(portLike);
			    $("#1page_likePortID_" + likePort[i].id).append(portHidden);
		    }
		    for(var i = 2; i < 4; i++){
		    	var portDiv = $('<div id="1page_likePortID_'+likePort[i].id+'" class="u-effect-fade u-gallery-item likePorts2"></div>');
		    	$(".1page_like2").append(portDiv);
		    	var portTitle = $('<div style="font-size:1em;">'+likePort[i].title+'</div> ');
			    var portDate = $('<div class="u-text-grey-40" style="float:right; font-size:0.7em; padding-right:2%;"><span class="u-meta-date u-meta-icon">'+moment(likePort[i].update_date).format('YYYY.MM.DD')+'</span></div>');
		    	var portImg = $('<img src="${pageContext.request.contextPath}/resources/images/template'+likePort[i].template_id+'.png" alt="" class="u-blog-control u-expanded-width u-image u-image-round u-radius-21 u-image-1 1page_portImg">');
		    	var portLike=$('<div> 좋아요 : '+likePort[i].like+'개</div> ');
			    var portHidden = $('<input type="hidden" name="1page_portfolioID" value="'+likePort[i].id+'">');
			    var portIsVerticle = $('<input type="hidden" name="1page_portfolioIsVerticle" value="'+likePort[i].isVerticle+'">');

			    $("#1page_likePortID_" + likePort[i].id).append(portTitle);
			    $("#1page_likePortID_" + likePort[i].id).append(portDate);
			    $("#1page_likePortID_" + likePort[i].id).append(portImg);
			    $("#1page_likePortID_" + likePort[i].id).append(portLike);
			    $("#1page_likePortID_" + likePort[i].id).append(portHidden);
				  
		    }

            
		    $('.1page_portImg').on('click', function() {
		    	var id = $(this).siblings("input[name='1page_portfolioID']").val();
		    	var isVerticle = $(this).siblings("input[name='1page_portfolioIsVerticle']").val();
			    $.ajax({
					url: "board/portfolioView",
				 	type:'POST',
				   	traditional : true,
				    data:{"portfolioID":id},
				  	success:function(result){
				    	$("#yourModal").html(result);
				     	modal('yourModal');
				   	},
				   	error:function(request,status,error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				    }
				});
				          		
			    
			});
	    });

	    function modal(id) {
		    var zIndex = 9999;
		    var modal = $('#' + id);
		
		    // 모달 div 뒤에 희끄무레한 레이어
		    var bg = $('<div>')
		    	.attr('id','bg')
		        .css({
		            position: 'fixed',
		            zIndex: zIndex,
		            left: '0px',
		            top: '0px',
		            width: '100%',
		            height: '100%',
		            overflow: 'auto',
		            // 레이어 색갈은 여기서 바꾸면 됨
		            backgroundColor: 'rgba(0,0,0,0.4)'
		        })
		        .appendTo('body');
		
		    modal
		        .css({
		            position: 'fixed',
		            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',
		
		            // 시꺼먼 레이어 보다 한칸 위에 보이기
		            zIndex: zIndex + 1,
		
		            // div center 정렬
		            top: '50%',
		            left: '50%',
		            transform: 'translate(-50%, -50%)',
		            msTransform: 'translate(-50%, -50%)',
		            webkitTransform: 'translate(-50%, -50%)'
		        })
		        .show()
		        
		        .find('.modal_close_btn')
		        .on('click', function() {
		        	
		            bg.remove();
		            modal.hide();
		        });
		}

	    $(document).click(function(e) {
	        if (!$(e.target).closest('#yourModal').length) {
	        	$("#yourModal").css({ display : "none"});
	    		$("#bg").remove();
	        }
	    });
    </script>
  </head>
  <body data-home-page="portfolios.html" data-home-page-title="portfolios" class="u-body"><header class="u-clearfix u-header u-header" id="sec-bbf7"><div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font" style="font-size: 1rem; letter-spacing: 0px; font-family: NanumGothic; font-weight: 800;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
           <ul class="u-custom-font u-nav u-unstyled u-nav-1">
            	<li class="u-nav-item">
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/portfolio_board"">Portfolios</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY 페이지</a>	
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/login/logout">로그아웃</a>	
				</li>
			</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                	<li class="u-nav-item">
                		<a class="u-button-style u-nav-link maker"  style="padding: 10px 20px;"  href="<%=request.getContextPath()%>/portfolio_board">Portfolios</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY 페이지</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/login/logout">로그아웃</a>
					</li>
				</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="home.html" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header>
      <!-- header 종료  -->
      
      <!-- 인기 포트폴리오 게시 (흰배경)  -->
    <section class="u-clearfix u-white u-section-1" id="carousel_2697">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-custom-font u-text u-text-1">이 시간 인기 포트폴리오</p><span class="u-icon u-icon-circle u-text-custom-color-2 u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 316.658 316.658" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-4692"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 316.658 316.658" x="0px" y="0px" id="svg-4692" style="enable-background:new 0 0 316.658 316.658;"><g><path style="fill:currentColor;" d="M257.591,183.075c-11.104-12.792-26.45-21.154-43.217-23.551l-38.492-6.036V86.313   c0-15.952-12.979-28.93-28.931-28.93h-0.433c-15.952,0-28.931,12.978-28.931,28.93v107.881L77.794,177.14   c-7.993-3.425-17.104-2.614-24.367,2.176c-7.262,4.788-11.597,12.841-11.597,21.539v0.363c0,7.361,3.155,14.389,8.656,19.28   l67.102,59.669v28.989c0,4.143,3.357,7.5,7.5,7.5s7.5-3.357,7.5-7.5V276.8c0-2.142-0.916-4.182-2.517-5.604l-69.618-61.906   c-2.303-2.048-3.623-4.989-3.623-8.071v-0.363c0-3.695,1.77-6.982,4.854-9.017c3.087-2.035,6.807-2.366,10.201-0.911l50.24,21.532   c0.462,0.199,0.948,0.355,1.453,0.458c0.751,0.155,1.509,0.189,2.25,0.114c0.084-0.008,0.166-0.024,0.249-0.035   c0.155-0.021,0.311-0.041,0.464-0.071c0.134-0.026,0.265-0.063,0.396-0.096c0.1-0.026,0.2-0.047,0.299-0.077   c0.149-0.044,0.294-0.098,0.439-0.152c0.08-0.029,0.162-0.056,0.241-0.088c0.142-0.058,0.28-0.124,0.417-0.19   c0.081-0.039,0.164-0.075,0.243-0.117c0.123-0.065,0.241-0.137,0.36-0.208c0.091-0.055,0.184-0.107,0.273-0.166   c0.1-0.066,0.194-0.138,0.291-0.208c0.102-0.075,0.205-0.147,0.304-0.227c0.079-0.064,0.153-0.134,0.23-0.201   c0.106-0.094,0.214-0.187,0.315-0.287c0.068-0.067,0.131-0.139,0.196-0.208c0.1-0.106,0.2-0.21,0.293-0.323   c0.072-0.086,0.136-0.177,0.204-0.265c0.078-0.102,0.157-0.201,0.23-0.307c0.092-0.135,0.175-0.275,0.258-0.416   c0.04-0.067,0.083-0.13,0.121-0.198c0.36-0.652,0.628-1.362,0.782-2.114c0.104-0.503,0.152-1.01,0.152-1.512V86.313   c0-7.681,6.249-13.93,13.931-13.93h0.433c7.682,0,13.931,6.249,13.931,13.93v72.025c0,0.277,0.018,0.551,0.047,0.82   c-0.396,3.933,2.339,7.535,6.291,8.154l44.88,7.037c0.036,0.006,0.071,0.011,0.107,0.017c27.148,3.857,47.621,27.444,47.621,54.866   v0.766c0,12.69-3.097,25.349-8.956,36.606l-20.345,39.088c-1.913,3.675-0.484,8.203,3.189,10.115c1.106,0.576,2.29,0.85,3.457,0.85   c2.707,0,5.322-1.472,6.658-4.039l20.345-39.088c6.969-13.388,10.651-28.44,10.651-43.532v-0.766   C274.828,212.275,268.706,195.883,257.591,183.075z"></path><path style="fill:currentColor;" d="M146.735,37.79c4.143,0,7.5-3.357,7.5-7.5V7.5c0-4.143-3.357-7.5-7.5-7.5s-7.5,3.357-7.5,7.5v22.79   C139.235,34.433,142.593,37.79,146.735,37.79z"></path><path style="fill:currentColor;" d="M193.189,98.897c0,4.143,3.357,7.5,7.5,7.5h22.79c4.143,0,7.5-3.357,7.5-7.5s-3.357-7.5-7.5-7.5   h-22.79C196.547,91.397,193.189,94.755,193.189,98.897z"></path><path style="fill:currentColor;" d="M194.744,56.468c1.919,0,3.839-0.732,5.304-2.196l16.115-16.115c2.929-2.93,2.929-7.678,0-10.607   c-2.93-2.928-7.678-2.928-10.607,0L189.44,43.664c-2.929,2.93-2.929,7.678,0,10.607C190.905,55.735,192.825,56.468,194.744,56.468z   "></path><path style="fill:currentColor;" d="M87.521,54.271c1.465,1.464,3.385,2.196,5.304,2.196s3.839-0.732,5.304-2.196   c2.929-2.93,2.929-7.678,0-10.607L82.013,27.549c-2.93-2.928-7.678-2.928-10.607,0c-2.929,2.93-2.929,7.678,0,10.607L87.521,54.271   z"></path><path style="fill:currentColor;" d="M64.419,106.397h22.79c4.143,0,7.5-3.357,7.5-7.5s-3.357-7.5-7.5-7.5h-22.79   c-4.143,0-7.5,3.357-7.5,7.5S60.276,106.397,64.419,106.397z"></path>
</g></svg></span>
        <div id="carousel-8627" data-interval="5000" data-u-ride="carousel" class="u-carousel u-expanded-width u-slider u-slider-1">
          <ol class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
            <li data-u-target="#carousel-8627" class="u-active u-active-custom-color-1 u-grey-30 u-hover-custom-color-4" data-u-slide-to="0"></li>
            <li data-u-target="#carousel-8627" class="u-active-custom-color-1 u-grey-30 u-hover-custom-color-4" data-u-slide-to="1"></li>
          </ol>
          <div class="u-carousel-inner" role="listbox">
            <div class="u-active u-align-center u-carousel-item u-container-style u-slide">
              <div class="u-container-layout u-valign-bottom-lg u-valign-bottom-md u-valign-bottom-sm u-container-layout-1">
                <div class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-1">
                  <div class="u-gallery-inner u-gallery-inner-1  1page_like1">
                    
                  </div>
                </div>
                
              </div>
            </div>
            <div class="u-align-center u-carousel-item u-container-style u-expanded-width-xl u-slide">
              <div class="u-container-layout u-valign-bottom-lg u-valign-bottom-md u-valign-bottom-sm u-valign-bottom-xs u-container-layout-2">
                <div class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-2">
                  <div class="u-gallery-inner u-gallery-inner-2 1page_like2">
                    
                  </div>
                </div>
               
              </div>
            </div>
          </div>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-icon-circle u-text-custom-color-1 u-carousel-control-1" href="#carousel-8627" role="button" data-u-slide="prev">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
            </span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-icon-circle u-text-custom-color-1 u-carousel-control-2" href="#carousel-8627" role="button" data-u-slide="next">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
            </span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <p class="u-custom-font u-text u-text-grey-40 u-text-2">인기 포트폴리오는 좋아요수에 따라 산정됩니다.&nbsp;</p>
      </div>
    </section>
    
    <!--전체 공개 포트폴리오 목록 (회색) -->
    <section class="u-align-left u-clearfix u-grey-5 u-section-2" id="carousel_8f4c">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-sheet-1">
        <div class="u-expanded-width-xs u-form u-form-1">
        
          <form action="#" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px" source="custom" name="form">
            <div class="u-form-group u-form-select u-form-group-1">
              <label for="select-2b13" class="u-form-control-hidden u-label">Select</label>
              <div class="u-form-select-wrapper">
                <select id="select-2b13" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                  <option value="최신순">최신순</option>
                  <option value="인기순">인기순</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            
            <!-- <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-btn u-btn-submit u-button-style u-grey-5 u-btn-1">
                <br>
              </a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse"> -->
          </form>
        </div><!--blog--><!--blog_options_json--><!--{"type":"Recent","source":"","tags":"","count":6}--><!--/blog_options_json-->
        <!--  -->
        <div id="1page_portBoard" class="u-blog u-expanded-width u-repeater u-repeater-1">
        <!-- portfolio Div 생김 -->
        </div><!--/blog--><!-- 포트폴리오 전체 div -->
      </div>
    </section>
    
    <!-- 목록 페이지 조회  -->
    <section class="u-clearfix u-grey-5 u-section-3" id="sec-8f03">
      <div class="u-clearfix u-sheet u-sheet-1">
        <!-- <ul class="responsive-style1 u-pagination u-unstyled u-pagination-1">
          <li class="disabled prev u-nav-item u-pagination-item">
            <a class="u-button-style u-nav-link" href="#" style="padding: 16px 28px;">〈</a>
          </li>
          <li class="active u-nav-item u-pagination-item">
            <a class="u-button-style u-nav-link" href="#" style="padding: 16px 28px;">1</a>
          </li>
          <li class="u-nav-item u-pagination-item">
            <a class="u-button-style u-nav-link" href="#" style="padding: 16px 28px;">2</a>
          </li>
          <li class="u-nav-item u-pagination-item">
            <a class="u-button-style u-nav-link" href="#" style="padding: 16px 28px;">3</a>
          </li>
          <li class="u-nav-item u-pagination-item u-pagination-separator">
            <a class="u-button-style u-nav-link" href="#" style="padding: 16px 28px;">…</a>
          </li>
          <li class="u-nav-item u-pagination-item">
            <a class="u-button-style u-nav-link" href="#" style="padding: 16px 28px;">8</a>
          </li>
          <li class="next u-nav-item u-pagination-item">
            <a class="u-button-style u-nav-link" href="#" style="padding: 16px 28px;">〉</a>
          </li>
        </ul> -->
        <ul class="responsive-style1 u-pagination u-unstyled u-pagination-1">
			<c:if test="${pageMaker.prev}">
			<li class="disabled prev u-nav-item u-pagination-item">
				<a  class="u-button-style u-nav-link" style="padding: 16px 28px;" href='<%=request.getContextPath()%>/portfolio_board?page=${pageMaker.startPage-1}'>&laquo;</a>
			</li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			<li class="active u-nav-item u-pagination-item">
				<a class="u-button-style u-nav-link" style="padding: 16px 28px;" href='<%=request.getContextPath()%>/portfolio_board?page=${idx}'>${idx}</a>
			</li>
			</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<li class="next u-nav-item u-pagination-item">
				<a class="u-button-style u-nav-link" style="padding: 16px 28px;" href='<%=request.getContextPath()%>/portfolio_board?page=${pageMaker.endPage+1}'>&raquo;</a>
			</li>
			</c:if>
		</ul>
      </div>
      
      <div id="yourModal">
	        
      </div>
      
    </section>
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-custom-font u-small-text u-text u-text-variant u-text-1">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
  </body>
</html>
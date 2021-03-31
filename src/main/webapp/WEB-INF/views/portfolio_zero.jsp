<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 템플릿 탭 (step1) -->
<!DOCTYPE html>
<html lang="en">
<head>
<!-- color picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>

<!-- font -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/fontselect-alternate.css" />
<script src="<%=request.getContextPath()%>/resources/js/jquery.fontselect.js"></script>

<!-- 한글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">

<script>
$(document).ready(function () {
	var colorList;
	$.ajax({ //해당 template의 colorList가져오기
		url : "colorList",
	  	type : "post",
	  	data:{"template_id":"1"},
	  	dataType : "json",
	  	async: false,
	  	success: function(data){
	  		colorList = data;
		  	console.log("colorList 불러오기 성공");
		  	console.log(colorList); 	
		  					  		
	  	},
	  	error:function(request, status, error){

			alert("code:"+request.status+"\n"+"\n"+"error:"+error);

		}
	});


	for(var i=0; i<colorList.length;i++){
		if(i==0){
			var colorDiv=$("<div onclick='changeColor(this);' id='color_"+colorList[i].id+"' class='color "+colorList[i].color1+" active' style='background-color:"+colorList[i].color1+";'></div>"); 
			var colorName=$("<div style='font-size:10px; padding-right:10px;'>"+colorList[i].name+"</div>");	
		}else{
			var colorDiv=$("<div onclick='changeColor(this);' id='color_"+colorList[i].id+"' class='color "+colorList[i].color1+"' style='background-color:"+colorList[i].color1+";'></div>"); 
			var colorName=$("<div style='font-size:10px;padding-right:10px;'>"+colorList[i].name+"</div>");
		}
		$(".color-picker").append(colorDiv);
		$(".color-picker").append(colorName);
	}
	var template_color=$("#bigView_color").val();
	var template_font=$("#bigView_font").val();
	var template_html="template2";
	var template_isVerticle=$("input[name=template_isVerticle]").val();
	
	var sendData={"template_html":template_html,"template_color":template_color,"template_font":template_font};
	$.ajax({
        url: "<%=request.getContextPath()%>/tem_image",
        type:'POST',
        traditional : true,
        data: sendData,
        success:function(result){
            $("#preview_portfolio_img").html(result);
            //$(".imageicon").attr("src", $("#1page_form").find("img").attr("src")); 
            if(template_isVerticle=="1"){
                $("#preview_portfolio_img .wrap").css("width","220px"); 
                $("#preview_portfolio_img .wrap").css("height","280px");
            }
            else{
            	$("#preview_portfolio_img .wrap").css("width","297px"); 
               	$("#preview_portfolio_img .wrap").css("height","207px");
            }
        },
        error:function(request,status,error){
     	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
	});
	var tempData;
	$.ajax({
	     url: "<%=request.getContextPath()%>/templateData",
	     type:'POST',
	     traditional : true,
	     data: {"tem_id":1},
	     success:function(result){
	         tempData=result;
	         $('#select_template_isVerticle').val(tempData.isVerticle);
	         $('#show_explanation').text(tempData.explanation);
	     },
	     error:function(request,status,error){
	  	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	     }
	});
});


var color;

function imgBig(a,b,templateID,template_html){
 
	//document.getElementById('preview_portfolio').src=document.getElementById(a).src; 
	document.getElementById('show_explanation').innerHTML=document.getElementById(b).innerHTML;
	document.getElementById('select_template_id').value = templateID;
	document.getElementById('select_template_html').value = template_html;
	document.getElementById('select_template_isVerticle').value = $("#template_isVerticle_"+templateID).val(); 
	//$("#select_template_html").val() = template_html;

	$.ajax({ //해당 template의 colorList가져오기
		url : "colorList",
	  	type : "post",
	  	data:{"template_id":templateID},
	  	dataType : "json",
	  	async: false,
	  	success: function(data){
	  		colorList = data;
		  	console.log("colorList 불러오기 성공");
		  	console.log(colorList); 	
		  					  		
	  	},
	  	error:function(request, status, error){

			alert("code:"+request.status+"\n"+"\n"+"error:"+error);

		}
	});

	$(".color-picker").empty();

	for(var i=0; i<colorList.length;i++){
		var colorDiv=$("<div onclick='changeColor(this);' id='color_"+colorList[i].id+"' class='color "+colorList[i].color1+"' style='background-color:"+colorList[i].color1+";'></div>"); 
		var colorName=$("<div style='font-size:10px; padding-right:10px;'>"+colorList[i].color_name+"</div>");	
		$(".color-picker").append(colorDiv);
		$(".color-picker").append(colorName);
	}


	var template_color=$("#bigView_color").val();
	var template_font=$("#bigView_font").val();
	var template_html=template_html;
	var template_isVerticle=$("input[name=template_isVerticle]").val();
	
	var sendData={"template_html":template_html,"template_color":template_color,"template_font":template_font};
	$.ajax({
        url: "<%=request.getContextPath()%>/tem_image",
        type:'POST',
        traditional : true,
        data: sendData,
        success:function(result){
            $("#preview_portfolio_img").html(result);
           // $(".imageicon").attr("src", $("#1page_form").find("img").attr("src")); 
            if(template_isVerticle=="1"){
            	$("#preview_portfolio_img .wrap").css("width","220px"); 
                $("#preview_portfolio_img .wrap").css("height","280px");
            }
            else{
          	  	$("#preview_portfolio_img .wrap").css("width","297px"); 
               	$("#preview_portfolio_img .wrap").css("height","207px");
            }
        },
        error:function(request,status,error){
     	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
	});
	
	
}

//Select Color
// gives the option the color of it's value\
var cpBackgroundColors = document.getElementsByClassName("color");

function changeColor(sender) {
	for (var i = 0; i < cpBackgroundColors.length; i++)
		cpBackgroundColors[i].classList.remove("active");
	
	var selectedClass = sender.className.replace('color', '');
	color = selectedClass;
	console.log(color);

	var color_id=$(sender).attr("id");	
	var id_split=color_id.split('_');

	document.getElementById('select_template_color').value =id_split[1];
	document.getElementById('bigView_color').value =id_split[1];
	sender.classList.add("active");

	var template_color=id_split[1];
	var template_font=$("#bigView_font").val();
	var template_html=$("input[name=template_html]").val();
	var template_isVerticle=$("input[name=template_isVerticle]").val();
	
	var sendData={"template_html":template_html,"template_color":template_color,"template_font":template_font};
	$.ajax({
        url: "<%=request.getContextPath()%>/tem_image",
        type:'POST',
        traditional : true,
        data: sendData,
        success:function(result){
            $("#preview_portfolio_img").html(result);
            $(".imageicon").attr("src", $("#1page_form").find("img").attr("src")); 
            if(template_isVerticle=="1"){
            	$(".wrap").css("width","220px"); 
                $(".wrap").css("height","280px");
            }
            else{
          	  	$(".wrap").css("width","297px"); 
               	$(".wrap").css("height","207px");
            }
        },
        error:function(request,status,error){
     	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
	});
	
}

function rgbToHex(rgb) { 
  var hex = Number(rgb).toString(16);
  if (hex.length < 2)
       hex = "0" + hex;
  return hex;
}	

 	function applyFont(font) {
		console.log('You selected font: ' + font);

		// Replace + signs with spaces for css
		font = font.replace(/\+/g, ' ');

		// Split font into family and weight/style
		font = font.split(':');

		var fontFamily = font[0];
		var fontSpecs = font[1] || null;
		var italic = false, fontWeight = 400;

		if (/italic/.test(fontSpecs)) {
			italic = true;
			fontSpecs = fontSpecs.replace('italic','');
		}
		fontWeight = +fontSpecs;

		// Set selected font on paragraphs
		var css = {
			fontFamily: "'"+fontFamily+"'",
			fontWeight: fontWeight,
			fontStyle: italic ? 'italic' : 'normal'
		};
		
		/* $('p').css(css); */
		document.getElementById('select_template_font').value =fontFamily;
		document.getElementById('bigView_font').value =fontFamily;

		var template_color=$("#bigView_color").val();
		var template_font=fontFamily;
		var template_html=$("input[name=template_html]").val();
		var template_isVerticle=$("input[name=template_isVerticle]").val();
		
		var sendData={"template_html":template_html,"template_color":template_color,"template_font":template_font};
		$.ajax({
	        url: "<%=request.getContextPath()%>/tem_image",
	        type:'POST',
	        traditional : true,
	        data: sendData,
	        success:function(result){
	            $("#preview_portfolio_img").html(result);
	            $(".imageicon").attr("src", $("#1page_form").find("img").attr("src")); 
	            if(template_isVerticle=="1"){
	            	$(".wrap").css("width","220px"); 
	                $(".wrap").css("height","280px");
	            }
	            else{
	          	  	$(".wrap").css("width","297px"); 
	               	$(".wrap").css("height","207px");
	            }
	        },
	        error:function(request,status,error){
	     	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }
		});
	}

 
</script>

<style>
	.one_tempelete {
		float: left;
		width: 170px;
		height: 130px;
		line-height: 130px;
		text-align: center;
		padding:5px;
		color:black;
		margin:5px;
	}
	
	/* card view 선택 */
	.w3-display-container:hover .display-hover{
		background-color: rgba( 255, 255, 255, 0.8 );
		padding:20px;
		display:block;
		}
	.w3-display-container:hover{
		border:1px solid #F9CA03;
		display:inline-block;
		backgroud-color:white;
		opacity:1;
	}
	.display-hover{
		display:none;
	}
	.w3-display-container{
		position:relative; 
		padding:10px;
		width:100%;
		height:120%;
		overflow: hidden;
		border-radius: 10px;
		border:1px solid #F2F2F2;
	}
	.w3-display-container_lock{
		position:relative; 
		padding:5px;
		width:100%;
		height:120%;
		overflow: hidden;
		border-radius: 10px;
		border:1px solid #F2F2F2;
		display : block ;
  		text-align : center ;
	}
	.display-hover{
		position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%)
	}
	
	.template_explanation{
		background-color: rgba( 255, 255, 255, 0);
		border:rgba( 255, 255, 255, 0);
		width:300px;
		height:250px;
		font-size: 14px;
		font-weight:bold;
		line-height: 24px;
		color: #EDBF00;
	}
	
	/*color  */
	.primary-content {
		height: 100%;
		text-align: center;
		padding: 15px;
		color: #fff;
		overflow-y: auto;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-direction: column;
	}
	
	.color-picker {
		height:auto;
		width: 100%;
		border-radius: 5px;
		padding: 15px;
	}
	.color {
		position: relative;
		width: 30px;
		height: 30px;
		display: inline-block;
		margin-right: 10px;
		border-radius: 50%;
		border: 2px solid #fff;
		box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
		transition: 0.2s linear all;
		cursor: pointer;
	}
	.color:hover {
		box-shadow: 0 0 8px rgba(0, 0, 0, 0.75);
	}
	.color.active::before {
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		background-color: #0005;
		width: 100%;
		height: 100%;
		border-radius: 50%;
	}
	.color.active::after {
		content: '';
		position: absolute;
		top: 18%;
		left: 50%;
		border: 2px solid transparent;
		border-left-color: #fff;
		border-bottom-color: #fff;
		width: 15px;
		height: 8px;
		transform: rotate(-45deg) translate(-50%, -50%);
	}
	
</style>

</head>

<body>
	
	 <!--템플릿 선택 TAB -->
            <div class="u-align-left u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
              <div class="u-container-layout u-container-layout-2">
                
                <!-- 템플릿 리스트 div -->
                <div class="u-align-left u-border-2 u-border-grey-10 u-container-style u-group u-radius-21 u-shape-round u-white u-group-2">
                  <div class="u-container-layout u-container-layout-3" style="overflow-x:hidden; overflow-y:scroll; height:270px;">
                    <h6 class="u-align-left u-custom-font u-text u-text-3">원하는 템플릿을 선택하세요&nbsp;▼</h6>
                    
                  	<!-- 템플릿 리스트가 들어갈 div -->
                 	<div class="onepage_ templete_box box">
                 		<!-- DB에 있는 템플릿 리스트 -->
                  		<c:forEach items="${template}" var="template">
						<div class="onepage_ one_tempelete" style="display:inline; margin-bottom:45px;">
							<div class="onepage_ w3-display-container" id="container_${template.id}">
								<img class="onepage_ templete_image" id="templete_image_${template.id}"
									src="<%=request.getContextPath()%>/resources/images/${template.html}.png"
									alt="template" style="height:auto; width:50%;">
								<div class="onepage_ display-hover">
						        	<button class="onepage_ template_explanation" id="template_explanation_${template.id}" onclick="imgBig('templete_image_${template.id}','template_explanation_${template.id}','${template.id}','${template.html}')">${template.explanation}</button>
						       		<input type="hidden" id="template_isVerticle_${template.id}" class="onepage_ template_isVerticle" value="${template.isVerticle}">
						        </div>
							</div>
							<p class="onepage_ template_name">${template.template_name}</p>
						</div>
						</c:forEach>
						
						<!-- DB에 없는 템플릿 리스트 (예시로 넣은 것) -->
						<div class="onepage_ one_tempelete" style="display:inline; margin-bottom:45px;">
							<div class="onepage_ w3-display-container_lock">
								<img class="onepage_ imageicon" src="<%=request.getContextPath()%>/resources/images/lock_img.png" alt="lock_img" style="position:absoulte;width:40%;height:auto;">
							</div>
							<p class="onepage_ template_name">트렌디</p>
						</div>
						<div class="onepage_ one_tempelete" style="display:inline; margin-bottom:45px;">
							<div class="onepage_ w3-display-container_lock">
								<img class="onepage_ imageicon" src="<%=request.getContextPath()%>/resources/images/lock_img.png" alt="lock_img" style="position:absoulte;width:40%;height:auto;">
							</div>
							<p class="onepage_ template_name">컬러풀</p>
						</div>
						<div class="onepage_ one_tempelete" style="display:inline; margin-bottom:45px;">
							<div class="onepage_ w3-display-container_lock">
								<img class="onepage_ imageicon" src="<%=request.getContextPath()%>/resources/images/lock_img.png"  alt="lock_img" style="position:absoulte;width:40%;height:auto;">
							</div>
							<p class="onepage_ template_name">레트로</p>
						</div>
					
                  	</div>
                  	
                  </div>
                </div>
                
                <!-- 템플릿 테마 고르는 div -->
                <div class="u-border-2 u-border-grey-10 u-container-style u-group u-radius-21 u-shape-round u-white u-group-3">
                  <div class="u-container-layout u-valign-top u-container-layout-4">
                    <h6 class="u-custom-font u-text u-text-4" style="padding-bottom:10px;">테마 | 폰트 선택</h6>
                    	
                    
                    <div>
						<div id="onepage_ cp-background-color" class="onepage_ color-picker" style="display:flex; align-items:center; ">
							<h6 style="display:inline; padding-right: 15px;">테마</h6>
							<!-- colorList 들어갈 자리 -->
						</div>
	                    
	                    <!-- font picker -->
	                    <div id="onepage_ font_box" style="display:flex; align-items:center; padding-left:15px;">
	                    	<h6 style="display:inline; padding-right: 15px;">폰트</h6>
							<input id="font2" type="text">
						</div>
	
					</div>
					
					<script>
					$('#font2').fontselect({
					   googleFonts: [
					      'Pacifico', 'Press+Start+2P',
					      'ZCOOL+KuaiLe', 'Gloria+Hallelujah',
					      'Changa:200', 'Changa:300',
					      'Changa:400', 'Changa:500'
					   ],
					   placeholder: 'sans-serif',
					   searchable: false
					})
					.on('change', function() {
					   applyFont(this.value);
					});
					</script>
					
                  </div>
                </div>
                
                <!-- 템플릿 고르는 페이지 오른쪽 박스 -->
                <div class="u-border-2 u-border-custom-color-2 u-container-style u-group u-opacity u-opacity-95 u-radius-21 u-shape-round u-white u-group-4">
                  <div class="u-container-layout u-valign-bottom u-container-layout-5">
                    <h6 class="u-custom-font u-text u-text-custom-color-3 u-text-5">선택된 템플릿</h6><span class="u-hidden-sm u-hidden-xs u-icon u-icon-circle u-text-custom-color-2 u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 405.272 405.272" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-5217"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 405.272 405.272" x="0px" y="0px" id="svg-5217" style="enable-background:new 0 0 405.272 405.272;"><g><path d="M393.401,124.425L179.603,338.208c-15.832,15.835-41.514,15.835-57.361,0L11.878,227.836   c-15.838-15.835-15.838-41.52,0-57.358c15.841-15.841,41.521-15.841,57.355-0.006l81.698,81.699L336.037,67.064   c15.841-15.841,41.523-15.829,57.358,0C409.23,82.902,409.23,108.578,393.401,124.425z"></path>
</g></svg></span>
					<!-- 선택한 템플릿에 대한 정보 -->
                    <div class="u-border-2 u-border-grey-5 u-expanded-width u-radius-10 u-shape u-shape-round u-shape-1" style="text-align:center; border:white;">
                    	<!-- 선택한 템플릿 이미지 -->
                    	<div id="preview_portfolio_img">
							<%-- <img class="myPortfolio" id="preview_portfolio" name="bigView" src="<%=request.getContextPath()%>/resources/images/template2.png" style="width:80%; height:auto;" > --%>
						</div>
                    	<!— 선택한 템플릿 설명 —>
                    	<p class="text" id="show_explanation" style="padding: 20px 0;"></p>
						<p class="text" id="ready" style="color:red"></p>
						<input type="hidden" id="bigView_color" value="1">
						<input type="hidden" id="bigView_font" value="">
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
            
           
</body>
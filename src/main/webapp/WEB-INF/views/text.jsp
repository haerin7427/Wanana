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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/fontselect-alternate.css" />
<script src="<%=request.getContextPath()%>/resources/js/jquery.fontselect.js"></script>

<style type="text/css">
	.main1_box {
		margin: 1% 4%;
		width: 90%;
		height: 500px;
		border-radius: 40px;
	}
	
	.show_box {
		width: 100%;
		height: 95%;
		display: block;
		padding-top: 20px;
	}
	
	.show_box ::after {
		clear: left;
	}
	
	.box {
		float: left;
		margin:1px;
		background-color:white;
	}
	
	.box ::after {
		clear: left;
	}
	
	.templete_box {
		width: 55%;
		height: 100%;
		border-radius: 10px;
		
	}
	
	.preview_box {
		width: 42%;
		height: 100%;
		border-radius: 10px;
		padding:20px;
		padding-left: 20px;
		margin-left:30px;
		border:2px solid #F9CA03;
		overflow:auto;
	}
	.preview_portfolio{
		position:relative;
		width:100%;
		height:60%;
	}
	.preview_portfolio_box{
		position:absolute;
		height:80%;
	}
	.customizing{
		position:absolute;
		height:20%;
		width:100%;
	}
	
	.one_tempelete {
		float: left;
		width: 200px;
		height: 28%;
		text-align: center;
		padding:5px;
		color:black;
		margin:5px;
	}
	
	.myPortfolio {
		width: 80%;
		height: 80%;
	}
	
	.templete_image {
		height: auto;
	}
	
	.text{
		color:black;
	}
	
	.button_box {
		width: 100%;
		text-align: center;
	}
	
	.b {
		display: inline-block;
		border-radius: 20px;
		padding: 0.5% 8%;
		margin: 5px;
	}
	
	.template_name{
		margin-top : 10px;
		font-weight: bold;
		font-size: 16px;
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
		width: 80%;
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

<script>

	var color;
	
	function imgBig(a,b,templateID,template_html){
		<%-- $("#preview_portfolio").load('<%=request.getContextPath()%>/tem_image'
			 ,{ template_html: template_html}); --%>
		document.getElementById('preview_portfolio').src=document.getElementById(a).src; 
		document.getElementById('show_explanation').innerHTML=document.getElementById(b).innerHTML;
		document.getElementById('select_template_id').value = templateID;
		document.getElementById('select_template_html').value = template_html;
		//if(document.getElementById('preview_portfolio').style.display == 'none')
		//	document.getElementById('preview_portfolio').style.display='block';
	}

	

	//Select Color
	// gives the option the color of it's value\
	
	var backgroundInfo = document.getElementById("background-info");
	var cpBackgroundColors = document.getElementsByClassName("color");
	
	function changeColor(sender) {
		for (var i = 0; i < cpBackgroundColors.length; i++)
			cpBackgroundColors[i].classList.remove("active");
		
		var selectedClass = sender.className.replace('color', '');
		color = selectedClass;
		alert(color);
		sender.classList.add("active");
	}
	
	function rgbToHex(rgb) { 
	  var hex = Number(rgb).toString(16);
	  if (hex.length < 2)
	       hex = "0" + hex;
	  return hex;
	}	

	
	//Color
	/* var colorWell;
	var defaultColor = "#000000";
	
	window.addEventListener("load", startup, false);
	
	function startup() {
		colorWell = document.querySelector("#colorWell");
		colorWell.value = defaultColor;
		colorWell.addEventListener("input", updateFirst, false);
		colorWell.addEventListener("change", updateAll, false);
		colorWell.select();
	}

	function updateFirst(event) {
		var p = document.querySelector("p");

		if (p) {
			p.style.color = event.target.value;
		}
	}

	function updateAll(event) {
		document.querySelectorAll("p").forEach(function(p) {
		    p.style.color = event.target.value;
		});
	}
	 */

	 /* Font */
	 $(function(){
        $('#font').fontselect().change(function(){
        
          // replace + signs with spaces for css
          var font = $(this).val().replace(/\+/g, ' ');
          
          // split font into family and weight
          font = font.split(':');
          console.log(font[0]);
          // set family on paragraphs 
          $('p').css('font-family', font[0]);
        });
      });
	 
</script>

</head>

<body>
	
	<div id="tab1" class="tabcontent current">
		<div class="main1_box">
			<div class="show_box">
				<div class="templete_box box" style="overflow: scroll; word-break:break-all; border:1px solid #a09d9d; padding:18px;">
					<c:forEach items="${template}" var="template">
					<div class="one_tempelete" style="display:inline; margin-bottom:55px;">
						<div class="w3-display-container" id="container_${template.id}">
							<img class="templete_image" id="templete_image_${template.id}"
								src="<%=request.getContextPath()%>/resources/images/${template.html}.png"
								alt="template" style="height:100%; width:auto;">
							<div class="display-hover">
					        	<button class="template_explanation" id="template_explanation_${template.id}" onclick="imgBig('templete_image_${template.id}','template_explanation_${template.id}','${template.id}','${template.html}')">${template.explanation}</button>
					        </div>
						</div>
						<p class="template_name">${template.template_name}</p>
					</div>
					</c:forEach>
					<div class="one_tempelete" style="display:inline; margin-bottom:55px;">
						<div class="w3-display-container_lock">
							<img class="imageicon" src="<%=request.getContextPath()%>/resources/images/lock_img.png" width="70" alt="lock_img" style="position:absoulte;width:auto;height:60%;margin:10% 30% 0 0">
						</div>
						<p class="template_name">트렌디</p>
					</div>
					<div class="one_tempelete" style="display:inline; margin-bottom:55px;">
						<div class="w3-display-container_lock">
							<img class="imageicon" src="<%=request.getContextPath()%>/resources/images/lock_img.png" width="70" alt="lock_img" style="position:absoulte;width:auto;height:60%;margin:10% 30% 0 0">
						</div>
						<p class="template_name">컬러풀</p>
					</div>
					<div class="one_tempelete" style="display:inline; margin-bottom:55px;">
						<div class="w3-display-container_lock">
							<img class="imageicon" src="<%=request.getContextPath()%>/resources/images/lock_img.png" width="70" alt="lock_img" style="position:absoulte;width:auto;height:60%;margin:10% 30% 0 0">
						</div>
						<p class="template_name">레트로</p>
					</div>
					
				</div>

				<div class="preview_box box">

					<p class="text" style="font-size:25px; font-weight:bold; color:#F9CA03; padding-bottom:20px;">✔ 선택된 템플릿</p>

					<div class="preview_portfolio">
						<div style="text-align: center;" id="preview_portfolio_box">
							<img class="myPortfolio" id="preview_portfolio" name="bigView" src="<%=request.getContextPath()%>/resources/images/template2.png" style="width:auto; height:310px;" >
						</div>
						
						<div class="customizing"> 
							<!-- <input type="color" value="#000000" id="colorWell"> -->
						    <div id="primary-content" class="primary-content">
								<div id="cp-background-color" class="color-picker">
									<div onclick="changeColor(this);" class="color bg-primary"></div>
									<div onclick="changeColor(this);" class="color bg-success"></div>
									<div onclick="changeColor(this);" class="color bg-warning"></div>
									<div onclick="changeColor(this);" class="color bg-danger"></div>
								</div>
							</div>
							
							<div id=font>
								<input id="font" type="text" />
							</div>
							
						</div>
						<p class="text" id="show_explanation" style="padding: 20px 0;"></p>
						<p class="text" id="ready" style="color:red"></p>
					</div>			
				</div>
			</div>
		</div>
	</div>
</body>
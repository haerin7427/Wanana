<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="LOGIN">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
   <!-- haerin  -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/portfolio_one.css?ver=1" media="screen">
    
    <title>addData</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css?ver=5" media="screen">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/addData.css?ver=12" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js?ver=3" defer=""></script>
     <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/linkCheck.js?ver=6"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i|NanumGothic:400,700,800">
    
    <meta property="og:title" content="addData">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
    
    <style>
    /* 미리보기용 css 작업 */
    .small_title{
    	width:calc(8*var(--my-fontSize)) !important;
    }
    
    .u-align-center main_column p{
    text-align: left !important;
}
    
     .u-align-center {
    text-align: left !important;
}
.item_8_4 {
    text-align: center !important;
}
    </style>
    

    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}
</script>
    
    <script type="text/javascript">
    $(document).ready(function () {
    	//경로 구하는 법 
    	function getContextPath() {
    	    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    	    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1));
    	};

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

    	
        //category list 보여주기 
        var item_content = ${item_list};
        var field_content = ${item_input};
        var list_content = ${options}
        var past_categoryID=0;
        var count_categoryID = -1;
        var add_count = 0;
          

          for(var i=0; i < item_content.length; i++){
                    /*1. category 별 div 만들기  */
                  if(past_categoryID != item_content[i].category_id){
                      count_categoryID += 1;

                      var jumpID = "#1page_section" + item_content[i].category_id;
                      var id = "1page_" + item_content[i].category_id;
                      var divOne = $("<div id="+id+" data-href='"+ jumpID+ "'></div>"); 
                      divOne.addClass("u-container-style u-dialog-link u-expanded-width u-group u-shape-rectangle u-white u-group-7 1page_marginUnder"); 
                      $("#1page_categoryDiv").append(divOne);

                      var divTwo = $("<div></div>"); 
                      divTwo.addClass("u-container-layout u-container-layout-9");
                      $($("#1page_categoryDiv").children()[count_categoryID]).append(divTwo);

                      var categoryName =  $("<p>"+item_content[i].category_name +"</p>"); 
                      categoryName.addClass("u-align-left u-custom-font u-text u-text-7 noenter");
                      $($($("#1page_categoryDiv").children()[count_categoryID]).children()[0]).append(categoryName);

                      var itemNames = "";
                      for(var k = i; k < item_content.length; k++ ){
                          console.log(item_content[k].item_name);

                          if(item_content[i].category_id != item_content[k].category_id)
                              break;
                          
                          if(i != k)
                              itemNames += " | ";
                          itemNames += item_content[k].item_name;
                        }

                      var itemList =  $("<p>"+itemNames +"</p>"); 
                      itemList.addClass("u-align-left u-custom-font u-text u-text-8 noenter");
                      $($($("#1page_categoryDiv").children()[count_categoryID]).children()[0]).append(itemList);

                      var niceTag = $('<span class="u-align-left u-icon u-icon-circle u-text-grey-40 u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 469.336 469.336" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-db3f"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 469.336 469.336" x="0px" y="0px" id="svg-db3f" style="enable-background:new 0 0 469.336 469.336;"><g><g><path d="M456.836,76.168l-64-64.054c-16.125-16.139-44.177-16.17-60.365,0.031L45.763,301.682    c-1.271,1.282-2.188,2.857-2.688,4.587L0.409,455.73c-1.063,3.722-0.021,7.736,2.719,10.478c2.031,2.033,4.75,3.128,7.542,3.128    c0.979,0,1.969-0.136,2.927-0.407l149.333-42.703c1.729-0.5,3.302-1.418,4.583-2.69l289.323-286.983    c8.063-8.069,12.5-18.787,12.5-30.192S464.899,84.237,456.836,76.168z M285.989,89.737l39.264,39.264L120.257,333.998    l-14.712-29.434c-1.813-3.615-5.5-5.896-9.542-5.896H78.921L285.989,89.737z M26.201,443.137L40.095,394.5l34.742,34.742    L26.201,443.137z M149.336,407.96l-51.035,14.579l-51.503-51.503l14.579-51.035h28.031l18.385,36.771    c1.031,2.063,2.708,3.74,4.771,4.771l36.771,18.385V407.96z M170.67,390.417v-17.082c0-4.042-2.281-7.729-5.896-9.542    l-29.434-14.712l204.996-204.996l39.264,39.264L170.67,390.417z M441.784,121.72l-47.033,46.613l-93.747-93.747l46.582-47.001    c8.063-8.063,22.104-8.063,30.167,0l64,64c4.031,4.031,6.25,9.385,6.25,15.083S445.784,117.72,441.784,121.72z"></path></g></g></svg></span>'); 

                      $($($("#1page_categoryDiv").children()[count_categoryID]).children()[0]).append(niceTag);
                      

                      //2. section 만들기
                        var motherID = "#1page_sectionDiv_" + item_content[i].category_id;

                        var titleH = $('<h3 class="u-custom-font u-text u-text-1">'+item_content[i].category_name+'</h3>'); 
                        $(motherID).append(titleH);

                        var entireDiv = $('<div class="u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-tabs u-tabs-1"></div>'); 
                        $(motherID).append(entireDiv);

                        //ul append
                        var ul_ID = "1page_ul_"+ item_content[i].category_id;
                        var ul = $("<ul role='tablist' id='"+ul_ID+"'></ul>"); 
                        ul.addClass("u-grey-15 u-tab-list u-unstyled u-tab-list-1");
                        $($(motherID).children()[1]).append(ul);

                        //item 전체 Div
                        var tabID = "1page_tabDiv_c_"+item_content[i].category_id;
                        var tabsDiv = $('<div id="'+ tabID +'" class="u-tab-content"></div>');
                        $($(motherID).children()[1]).append(tabsDiv);
                        var first = 1;
                    

                        for(var h = i; h < item_content.length; h++){ //item 개수만큼 반복
                            if(item_content[i].category_id != item_content[h].category_id){
                                console.log("test : "+ item_content[i].item_name+ " vs "+ item_content[h].item_name);
                              break;
                            }

                            // li 만들기  
                            var li =$("<li role='presentation'></li>"); 
                            li.addClass("u-tab-item");
                            $("#"+ul_ID).append(li);

                            	// a 만들기 
                            var a =$("<a role='tab' id='1page_item_"+item_content[h].item_id+"' href='#item-"+item_content[h].item_id+"' aria-controls='item-"+item_content[h].item_id+"'>"+item_content[h].item_name+"</a>"); 
                            a.addClass("u-active-white u-button-style u-custom-font u-tab-link u-text-active-black u-text-grey-30 u-tab-link-2");
                            $($("#"+ul_ID).children()[h-i]).append(a);

                            //id li랑 연결
                            if(first == 1){
                                var niceTag1 = $('<div class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1" id="item-'+item_content[h].item_id+'" style="height:90%" role="tabpanel" aria-labelledby="1page_item_'+item_content[h].item_id+'"><div class="u-container-layout u-container-layout-2" style="overflow:scroll;"></div></div>');
                            		first = 0;
                                }else{
                                	var niceTag1 = $('<div class="u-container-style u-tab-pane u-white u-tab-pane-1" id="item-'+item_content[h].item_id+'" style="height:90%" role="tabpanel" aria-labelledby="1page_item_'+item_content[h].item_id+'"><div class="u-container-layout u-container-layout-2" style="overflow:scroll;"></div></div>');
                                    }
                            $("#"+tabID).append(niceTag1);
                            

                            //1. 새 데이터 입력
                           	var itemDiv_ID = "item-"+item_content[h].item_id;
                            var tabDiv_itemID = "1page_tabDiv_item_"+item_content[h].item_id;
                            var niceTag2 = $('<div class="u-border-2 u-border-grey-5 u-container-style u-expanded-width u-group u-radius-21 u-shape-round u-group-1 longersize2"><div class="u-container-layout u-container-layout-3"><p class="u-custom-font u-text u-text-2">새 데이터​ 추가</p><div class="u-container-style u-expanded-width u-grey-5 u-group u-radius-21 u-shape-round u-group-2 longersize"><div class="u-container-layout u-container-layout-4"><div id="'+tabDiv_itemID+'" class="u-form u-form-1"></div></div></p></div></div></div>');
                            $($("#"+itemDiv_ID).children()[0]).append(niceTag2);

                            	// field 추가 (content1-6)
                            var count = 0;
                            var isFile=false;
                            for(var k = 0 ; k <field_content.length;k++){
                                if(item_content[h].item_id < field_content[k].item_id)
                                    break;
                                
                                if(item_content[h].item_id == field_content[k].item_id){
                                    count += 1;
                                    var field_name = "count"+count;
                                    var fieldID = "1page_field_" + field_content[k].field_id;
                                    console.log("type: "+field_content[k].field_name+" : "+field_content[k].field_type);

                                    if(field_content[k].field_type=="file"){
                                        var imgTag = $('<img id="1page_view'+ field_content[k].field_id+ '" src="resources/images/21.png" alt="" class="u-image u-image-default u-image-1 fixplace" data-image-width="242" data-image-height="275">');
                                        $("#"+tabDiv_itemID).append(imgTag);

                                        var labelTag = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3 fileLabel">'+field_content[k].field_name+'</label>');
                                        $("#"+tabDiv_itemID).append(labelTag);

                                        var fieldDiv = $('<div class="u-form-group u-vertical-form-control-visible fixplace2"><input id="'+fieldID+'" type="file" placeholder="" name="defaultName" onchange="readURL(this);"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1"/></div>');
                                        if(field_content[k].field_mark == 1){
                                            fieldDiv.addClass("redStar");
                                        }
                                        $("#"+tabDiv_itemID).append(fieldDiv);
										isFile=true;
                                        
                                    }else if(field_content[k].field_type=='textarea'){
                                        var labelTag = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+field_content[k].field_name+'</label>');
                                        $("#"+tabDiv_itemID).append(labelTag);

                                        var fieldDiv = $('<div class="u-form-group u-vertical-form-control-visible u-form-group-1"><textarea id="'+fieldID+' 1page_textarea" name="defaultName" placeholder="" class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1"></textarea><span id="1page_textLimit">(0)</span></div>');
                                        if(field_content[k].field_mark == 1){
                                            fieldDiv.addClass("redStar");
                                            var spanTag = $('<span class="redMark">*</span>');
                                            $("#"+tabDiv_itemID).append(spanTag);
                                        }
                                        $("#"+tabDiv_itemID).append(fieldDiv);

                                    }else if(field_content[k].field_type=='date'){
                                        var labelTag = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+field_content[k].field_name+'</label>');
                                        $("#"+tabDiv_itemID).append(labelTag);

                                        var fieldDiv = $('<div class="u-form-group u-vertical-form-control-visible u-form-group-1"><input id="'+fieldID+'" type="month" placeholder="" name="defaultName"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1"></div>');
                                        if(field_content[k].field_mark == 1){
                                            fieldDiv.addClass("redStar");
                                            var spanTag = $('<span class="redMark">*</span>');
                                            $("#"+tabDiv_itemID).append(spanTag);
                                        }
                                        $("#"+tabDiv_itemID).append(fieldDiv);

                                    }else if(field_content[k].field_type=="select"){
                                        var labelTag = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+field_content[k].field_name+'</label>');
                                        $("#"+tabDiv_itemID).append(labelTag);

                                        var fieldDiv = $('<div class="u-form-select-wrapper u-form-group u-form-select u-vertical-form-control-visible u-form-group-5"><select id="'+fieldID+'" name="defaultName"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-3"></select><svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg></div>');
                                        if(field_content[k].field_mark == 1){
                                            fieldDiv.addClass("redStar");
                                            var spanTag = $('<span class="redMark">*</span>');
                                            $("#"+tabDiv_itemID).append(spanTag);
                                        }
                                        $("#"+tabDiv_itemID).append(fieldDiv);

                                        for(var t = 0; t < list_content.length; t++){
                                            if(list_content[t].field_id == field_content[k].field_id){
                                                var optionTag = $('<option value="'+list_content[t].list_name+'">'+list_content[t].list_name+'</option>');
                                                $("#"+fieldID).append(optionTag);
                                            }
                                        }

                                    }
                                    else if(field_content[k].field_type=="collection"){
                                    	var labelTag = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+field_content[k].field_name+'</label>');
                                        $("#"+tabDiv_itemID).append(labelTag);

                                        //var fieldID = "1page_field_" + field_content[k].field_id;
                                        var fieldDiv = $('<div class="u-form-group u-vertical-form-control-visible u-form-group-1 collectionBox"><input id="'+fieldID+'" type="input" placeholder="" name="collection"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1 collectionInput0"></div>');                           
                                        $("#"+tabDiv_itemID).append(fieldDiv);
                                    }
                                    else{
                                        var labelTag = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+field_content[k].field_name+'</label>');
                                        $("#"+tabDiv_itemID).append(labelTag);

                                        //var fieldID = "1page_field_" + field_content[k].field_id;
                                        var fieldDiv = $('<div class="u-form-group u-vertical-form-control-visible u-form-group-1"><input id="'+fieldID+'" type="'+field_content[k].field_type+'" placeholder="" name="defaultName"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1"></div>');
                                        if(field_content[k].field_mark == 1){
                                            fieldDiv.addClass("redStar");
                                            var spanTag = $('<span class="redMark">*</span>');
                                            $("#"+tabDiv_itemID).append(spanTag);
                                        }
                                        $("#"+tabDiv_itemID).append(fieldDiv);

                                    }

                                }
                            }//for (k) 종료  
                            

                            //hidden field
                            for(var a = count+1 ; a <= 6; a++){
                                var hiddenTag = $('<input type="hidden" name="content'+a+'" value="" readonly="">');
                                $("#"+tabDiv_itemID).append(hiddenTag);
                            }
                        

                            //입력 버튼
                            var addB = $('<div class="fixplace3"><a href="#" id="1page_add_'+field_content[h].field_id+'" class="u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-custom-font u-radius-21 u-text-body-alt-color u-btn-1 1page_addB">+ 입력</a></div><p class="alertMsg"></p>');
                            $("#"+tabDiv_itemID).append(addB);
                            if(isFile==true)
                            	addB.addClass("fileAddB");
                            else
                            	addB.addClass("otherAddB");
                        	
							isFile=false;
                          //이전 데이터 버튼
                            var dbB = $('<div class="u-border-2 u-border-grey-5 u-container-style u-expanded-width u-group u-radius-21 u-shape-round u-group-3 1page_tm 1page_past'+item_content[h].item_id+'"><div class="u-container-layout u-valign-middle-xs u-container-layout-5 "><a href="#" id="'+item_content[h].item_id+'" class="pastB"><p class="u-align-center-xs u-custom-font u-text u-text-grey-40 u-text-3" >이전➕</p></a></div></div>');
                            //$($($("#"+tabID).children()[0]).children()[0]).append(dbB);
                            $($("#"+itemDiv_ID).children()[0]).append(dbB);
                        } //for(h) 종료 


                      //end
                      past_categoryID = item_content[i].category_id;
                  }
        }//for (i) 종료 
   		
   
        //이전 데이터 눌렀을 때 
         	$(".pastB").click(function (){
         		var resultYN = sessionChecking();
       			
       			if(resultYN == 1){
             	
  			var id=this.id;
  			var item_data;
  			var item_type;
  			var option_list;

  		  $('.1page_past'+id).css("display","none");
  			
  	      $.ajax({ // <!-- 해당 아이템의 user_id의 data 들고오기 -->
  		      url : '<%=request.getContextPath()%>/pastData',
  		  	  type : "post",
  		  	  data:{
  			  	  item_id:id
  			  	  },
  		  	  async: false,
  		  	  success: function(data){
  					console.log("이전 데이터 불러오기 성공");
  					item_data=data;			
  		  	  }
  		   });
  		   
  	  	$.ajax({ //<!-- Item_id에 맞는 field type,data_no,field name, field_id 가져오기 -->
  		      url : '<%=request.getContextPath()%>/dataInput',
  		  	  type : "post",
  		  	  data:{item_id:id},
  		  	  dataType : 'json',
  		  	  async: false,
  		  	  success: function(data){
  		  		item_type=data;
  		  		console.log("이전 인풋 박스 정보 불러오기 성공");

  		  		console.log("test data!");
  			  	console.log(item_data);
  			  	console.log("test input info!");
  			  	console.log(item_type);

  				var fields_id=item_type[0].field_id;

  				if(item_type[0].field_type=="select"){
  				  	
  					$.ajax({ //해당 field가 select라면 option 가져오기
  					      url : '<%=request.getContextPath()%>/optionList',
  					  	  type : "post",
  					  	  data:{field_id:fields_id},
  					  	  dataType : 'json',
  					  	  async: false,
  					  	  success: function(data){
  						  	option_list = data;
  					  		console.log("select option 불러오기 성공");
  					  		console.log(option_list); 	
  					  		
  					  	  }
  					});
  			  	}//select의 경우 option 들고오기 끝! 
  			  	
  				console.log("test option!");
  				console.log(option_list); 

  				//이전 데이터들을 감싸는 div  (여기 u-group을 지우니 세로 정렬!)
  				var brotherItem=$('<div class="u-border-2 u-border-grey-5 u-container-style u-expanded-width u-radius-21 u-shape-round u-group-1 longersize2 1page_tm 1page_pastBox'+id+'"></div>');
  				$('.1page_past'+id).after(brotherItem); 	

  				var pastBox=$('<div class="u-container-layout u-container-layout-3"><p class="u-custom-font u-text u-text-2">이전 데이터​</p></div>');
  				$('.1page_pastBox'+id).append(pastBox); 

  				for(var idx=0;idx<item_data.length;idx++){
  					var parentBox=$('<div class="u-container-style u-expanded-width u-grey-5 u-group u-radius-21 u-shape-round u-group-2 longersize longersize" ></div>');
  					$($('.1page_pastBox'+id).children()[0]).append(parentBox); 
  					var box1=$('<div class="u-container-layout u-container-layout-4"></div>');
  					$($($('.1page_pastBox'+id).children()[0]).children()[idx+1]).append(box1);
  					var box2=$('<div class="u-form u-form-1 1page_tabDiv'+id+'_past_'+item_data[idx].id+'"  id="1page_tabDiv'+id+'_past_'+item_data[idx].item_id+'"></div>');
  					$($($($('.1page_pastBox'+id).children()[0]).children()[idx+1]).children()[0]).append(box2);

  					var count = 0;
  					var isFile=false;
  					for(var k = 0 ; k <item_type.length; k++){
  						
  						if(k==0){
  							var content=item_data[idx].content1;
  						}
  						else if(k==1){
  							var content=item_data[idx].content2;
  						}
  						else if(k==2){
  							var content=item_data[idx].content3;
  						}
  						else if(k==3){
  							var content=item_data[idx].content4;
  						}
  						else if(k==4){
  							var content=item_data[idx].content5;
  						}
  						else if(k==5){
  							var content=item_data[idx].content6;
  						}
  						
  						count += 1;
  						
  						var fieldID = "1page_fieldPast"+item_data[idx].id+"_"+item_type[k].field_id;
  						console.log(item_type[k].field_type);
  						if(item_type[k].field_type=="file"){
  	                        var imgPast = $('<img id="1page_view'+ item_type[k].field_id+ '" src="resources/user_photo/'+content+'" alt="" class="u-image u-image-default u-image-1 fixplace" data-image-width="242" data-image-height="275">');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(imgPast);
  	
  	                        var labelPast = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3 fileLabel">'+item_type[k].field_name+'</label>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(labelPast);
  	
  	                        var pastFieldDiv = $('<div class="u-form-group u-vertical-form-control-visible fixplace2"><input id="'+fieldID+'" type="file" placeholder="" name="defaultName"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1"/></div>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(pastFieldDiv);

  	                      	isFile=true;
  	                      	
  	                    }else if(item_type[k].field_type=='textarea'){
  	                        var labelPast = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+item_type[k].field_name+'</label>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(labelPast);
  	                        var length=content.length;
  	                        var pastFieldDiv = $('<div class="u-form-group u-vertical-form-control-visible u-form-group-1"><textarea id="'+fieldID+' 1page_textarea" name="defaultName" placeholder="" class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1">'+content+'</textarea><span id="1page_textLimit">('+length+')</span></div>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(pastFieldDiv);
  	
  	                    }else if(item_type[k].field_type=='date'){
  	                        var labelPast = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+item_type[k].field_name+'</label>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(labelPast);
  	
  	                        var pastFieldDiv = $('<div class="u-form-group u-vertical-form-control-visible u-form-group-1"><input id="'+fieldID+'" type="month" value="'+content+'" placeholder="" name="defaultName"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1"></div>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(pastFieldDiv);
  	
  	                    }else if(item_type[k].field_type=="select"){
  	                        var labelPast = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+item_type[k].field_name+'</label>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(labelPast);
  	
  	                        var pastFieldDiv = $('<div class="u-form-select-wrapper u-form-group u-form-select u-vertical-form-control-visible u-form-group-5"><select id="'+fieldID+'" name="defaultName"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-3"></select><svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg></div>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(pastFieldDiv);
  	
  	                        for(var t = 0; t < option_list.length; t++){
  	                            if(option_list[t].field_id == item_type[k].field_id){
  									if(option_list[t].list_name==content){
  		                                var optionPast = $('<option value="'+option_list[t].list_name+'" selected>'+option_list[t].list_name+'</option>');
  		                                $("#"+fieldID).append(optionPast);
  									}
  									else{
  										var optionPast = $('<option value="'+option_list[t].list_name+'">'+option_list[t].list_name+'</option>');
  		                                $("#"+fieldID).append(optionPast);
  									}
  	                            }
  	                        }
  	                    }
  	                  else if(item_type[k].field_type=="collection"){
  	  	                    
							var colContent=content.replaceAll("[\\t\\s]","").split("$");
								
  	  	               		var labelPast = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+item_type[k].field_name+'</label>');
	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(labelPast);
	
                          //var fieldID = "1page_field_" + field_content[k].field_id;
                          var pastFieldDiv='<div class="u-form-group u-vertical-form-control-visible u-form-group-1 collectionBox">';
                          var wid;
                         
                          if(colContent.length==2)//한개면
                              wid="100%";
                          else if(colContent.length==3)//두개면
                              wid="50%";
                          else //세계면
                              wid="33%";
                          for(var x=0; x<colContent.length-1;x++){
                        	  pastFieldDiv=pastFieldDiv.concat('<input id="'+fieldID+'" type="input" placeholder="" name="collection" value="'+colContent[x+1]+'" class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1 collectionInput'+x+'" style="display:inline-block;width:'+wid+'">');
                           }
                          pastFieldDiv=pastFieldDiv.concat('</div>');
                  
                          $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(pastFieldDiv); 
                      }
  	                    else if(item_type[k].field_type=="text"){
  	                        var labelPast = $('<label for="select-907f" class="u-custom-font u-label u-text-grey-75 u-label-3">'+item_type[k].field_name+'</label>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(labelPast);
  	
  	                        var pastFieldDiv = $('<div class="u-form-group u-vertical-form-control-visible u-form-group-1"><input id="'+fieldID+'" type="'+item_type[k].field_type+'" name="defaultName" value="'+content+'" class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1"></div>');
  	                        $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(pastFieldDiv); 
  	
  	                    }					
  					}//for문 종료
  					
  					//hidden field
  					for(var a = count+1 ; a <= 6; a++){
  	                    var hiddenPast = $('<input type="hidden" name="content'+a+'" value="" readonly="">');
  	                    $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(hiddenPast);
  	                }

  					//입력 버튼
  					var pastAddB = $('<div class="fixplace3 "><a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-custom-font u-radius-21 u-text-body-alt-color u-btn-1 1page_pastAddB">+ 입력</a></div>');
                      $('.1page_tabDiv'+id+'_past_'+item_data[idx].id).append(pastAddB);
                    if(isFile==true)
                    	pastAddB.addClass("fileAddB");
                    else
                    	pastAddB.addClass("otherAddB");
                  	isFile=false;
  	                
  					}//이전데이터 개수(3개)만큼 반복문을 돌림 for(idx) 

  		  	  	}//success
				});//2번쨰 ajax 끝! 
       		} //resultYN == 1 경우 끝
  	    }); // 이전 데이터 보여주기 끝 

        //이전 데이터 포트폴리오에 추가하기
          $(document).on("click", ".1page_pastAddB", function(){
              
        	var resultYN = sessionChecking();
     			
     		if(resultYN == 1){
        	  
	        	add_count++; //포트폴리오에 넣는 전체 항목 
	            var data_num = $(this).parent().siblings("div").length;
	            console.log("click : " + data_num);
	
	            var find_itemID = $($(this).parent()).parent().attr("id");
	            console.log(find_itemID);
	            find_itemID = find_itemID.split("_");
	            var item = find_itemID[3] - 1;
	            console.log("item : " + item_content[item].item_name);

	            var niceTag3 = $('<div id="1page_count'+add_count+'" class="u-border-2 u-border-custom-color-2 u-container-style u-expanded-width u-group u-white u-group-14"><div class="u-container-layout u-container-layout-16 1page_inputs makedown_helper"><div class="u-border-1 u-border-grey-50 u-line u-line-vertical u-line-2" ></div><p class="u-custom-font u-text u-text-grey-30 u-text-19">'+item_content[item].item_name+'</p><input type = "hidden" name="add_itemID" value ="'+item_content[item].item_id+'"></div></div>');
	            $('#1page_form').append(niceTag3); 
            

          		//체크된 박스의 라인에 존재하는 상태 값 변경
	          var field_count = 0;
	          $(this).parent().siblings("div").each(function() {
	            	 field_count++;
	                 //date, text, file 이면 그대로 타입 유지 else 면 textarea
	                 //type : $(this).children().attr("type")
	                 //value : $(this).children().val()
	                 var type = $(this).children().attr("type");
	                 var isCollection = $(this).children('input').length;
	                 
	                 if(type == "file"){
	                     var viewTag = $('<img src="resources/images/21.png" alt="" class="u-image u-image-default u-image-1 fixplace" data-image-width="242" data-image-height="275">');
	                     $($('#1page_count' + add_count).children()[0]).append(viewTag);
	
	                     var realTag = $('<input type = "hidden" name="content'+field_count+'" value ="'+$(this).children().val()+'">');
	                     $($('#1page_count' + add_count).children()[0]).append(realTag);
	                  }
	                 else if(isCollection>1){
						var name=$(this).children().eq(0).attr("name");
						if(name=="collection"){
							var resultCollect='';
							for(var x=0; x<isCollection; x++){
								if($(this).children().eq(x).val().trim()=='')
									continue;
								resultCollect = resultCollect.concat($(this).children().eq(x).val(),'$');
							}

							var pTag = $('<p class="u-custom-font u-text u-text-body-color u-text-20">'+resultCollect+'</p>');
		                      $($('#1page_count' + add_count).children()[0]).append(pTag);
		                      
		                      var realTag = $('<input type = "hidden" id="content'+field_count+'" name="content'+field_count+'" value ="'+resultCollect+'">');
		                      $($('#1page_count' + add_count).children()[0]).append(realTag);
						}
	                 }
	                 else{
	                	 var name=$(this).children().attr("name");
 						if(name=="collection" && $(this).children().val().trim()!=''){
 							 var pTag = $('<p class="u-custom-font u-text u-text-body-color u-text-20">#'+resultCollect+'</p>');
 		                      $($('#1page_count' + add_count).children()[0]).append(pTag);
 		                      
 		                      var realTag = $('<input type = "hidden" id="content'+field_count+'" name="content'+field_count+'" value ="#'+resultCollect+'">');
 		                      $($('#1page_count' + add_count).children()[0]).append(realTag);
 						}
 						else{
	                      var pTag = $('<p class="u-custom-font u-text u-text-body-color u-text-20">'+$(this).children().val()+'</p>');
	                      $($('#1page_count' + add_count).children()[0]).append(pTag);
	                      
	                      var realTag = $('<input type = "hidden" id="content'+field_count+'" name="content'+field_count+'" value ="'+$(this).children().val()+'">');
	                      $($('#1page_count' + add_count).children()[0]).append(realTag);

		                  }
	                 }
	                 $(this).children().val('');
	                 $(this).siblings('#1page_textLimit').html("(0)");
	            }); //field 수 만큼 반복  
	            
	             for(var z = field_count+1 ; z < 7;z++){
	                 var trashTag =  $('<input type = "hidden" id="content'+z+'" name="content'+z+'" value ="">');
	                 $($('#1page_count' + add_count).children()[0]).append(trashTag);
	             }
	              var niceTag4 = $('<span  class="u-icon u-icon-circle u-text-custom-color-1 u-icon-13 1page_deleteB makedown" ><svg class="u-svg-link " preserveAspectRatio="xMidYMin slice" viewBox="0 0 365.696 365.696" style=""><use  xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6bc6"></use></svg><svg  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 365.696 365.696" id="svg-6bc6"><path d="m243.1875 182.859375 113.132812-113.132813c12.5-12.5 12.5-32.765624 0-45.246093l-15.082031-15.082031c-12.503906-12.503907-32.769531-12.503907-45.25 0l-113.128906 113.128906-113.132813-113.152344c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503907-12.5 32.769531 0 45.25l113.152344 113.152344-113.128906 113.128906c-12.503907 12.503907-12.503907 32.769531 0 45.25l15.082031 15.082031c12.5 12.5 32.765625 12.5 45.246093 0l113.132813-113.132812 113.128906 113.132812c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082031c12.5-12.503906 12.5-32.769531 0-45.25zm0 0"></path></svg></span>');
	              $($('#1page_count' + add_count).children()[0]).append(niceTag4);
	              showNotification();
     			} //resultYN == 1 경우 
          	});//이전 데이터에서 입력된 정보 div에 넣기 끝
         

        //입력된 정보 div에 넣기 
          $(".1page_addB").click(function () {
        	  var resultYN = sessionChecking();
     			
     			if(resultYN == 1){

		             var check_id = $(this).attr("id");
		             check_id = check_id.split("_");

		             var isEmpty = 0;
		             $(this).parent().siblings('.redStar').each(function() { 
		            	 		if ( $(this).children().is('input, textarea, select') && $(this).children().val().length < 1 ) 
		            	 				isEmpty = 1;
		                });

		             if(isEmpty == 1){
		            	 	$(this).parent().siblings('.alertMsg').text("필수 사항(*)을 모두 입력해주세요! ");
		              }else{ //필수 사항 모두 입력한 경우
		            	  	$(this).parent().siblings('.alertMsg').text("");

              				if(check_id[2]==1 && $('input[name=file1]').length == 1){//사진 개수 확인 
                  					$(this).siblings('p').text("사진은 최대 1장만 입력가능합니다.");
                  			 }else if( (check_id[2]==2 || check_id[2]==5 || check_id[2]==6 || check_id[2]==9) && $('input[name=add_itemID]:input[value='+check_id[2]+']').length > 0){//사진 개수 확인 
                  					$(this).siblings('p').text("최대 1개만 입력 가능합니다. ");
              				}/* else if(check_id[2] != 1 && $('input[name="add_itemID"]:input[value="'+check_id[2]+'"]').length == 3){
                  					var topic = $(this).parent().siblings('label').text();
            	 					$(this).siblings('p').text(topic+" : 최대 3개 입력가능합니다.");
              				} */else{
				                  //추가 가능할 때!
				                  $(this).siblings('p').text("");
				                  add_count++; //포트폴리오에 넣는 전체 항목 
						          var data_num = $(this).parent().siblings("div").length;
						          console.log("click : " + data_num);
	
					            var find_itemID = $($(this).parent()).parent().attr("id");
					            find_itemID = find_itemID.split("_");
					            var item = find_itemID[3] - 1;
					            console.log("item : " + item_content[item].item_name);
					
					            var niceTag3 = $('<div id="1page_count'+add_count+'" class="u-border-2 u-border-custom-color-2 u-container-style u-expanded-width u-group u-white u-group-14"><div class="u-container-layout u-container-layout-16 1page_inputs makedown_helper"><div class="u-border-1 u-border-grey-50 u-line u-line-vertical u-line-2"></div><p class="u-custom-font u-text u-text-grey-30 u-text-19">'+item_content[item].item_name+'</p><input type = "hidden" name="add_itemID" value ="'+item_content[item].item_id+'"></div></div>');
					            $('#1page_form').append(niceTag3); 
	            
	
					          //체크된 박스의 라인에 존재하는 상태 값 변경
					          var field_count = 0;
					          var type = "";
					          var isCollection=0;
					          $(this).parent().siblings("div").each(function() {
					            	 field_count++;
					                 //date, text, file 이면 그대로 타입 유지 else 면 textarea
					                 //type : $(this).children().attr("type")
					                 //value : $(this).children().val()
					                	 type = $(this).children().attr("type");
					                	 isCollection = $(this).children('input').length;
	                						 if(type == "file"){
	
	                	 							$($($('#1page_count' + add_count).children()[0]).children()[2]).remove(); //file일 경우 nice tag 지움  
	
							                   var viewTag = $($(this).siblings("img")).clone();
							                   viewTag.attr("id","1page_view2" );
							                   viewTag.attr("style","top:-15px;margin-left:40%;width:70px; height:70px;" );
							                   viewTag.attr("class","u-image" );
							                   $($('#1page_count' + add_count).children()[0]).append(viewTag);
							
							                     var realTag = $($(this).children()).clone();
							                     realTag.attr("name", "file1");
							                     realTag.attr("id", "");
							                     realTag.attr("class", "");
							                     realTag.css('display', 'none');
							                     $($('#1page_count' + add_count).children()[0]).append(realTag);
							
												// 기본이미지로 되돌리기 
							                     $('#1page_view1').attr('src', 'resources/images/21.png');     
	                     
	                     
	                  					}else if(type == "month"){
												var value=$(this).children().val();
												var replaced_str = value.replace(/\-/g, "/");
	                  						 	var pTag = $('<p class="u-custom-font u-text u-text-body-color u-text-20">'+replaced_str+'</p>');
						                      	$($('#1page_count' + add_count).children()[0]).append(pTag);
						                      
						                      	var realTag = $('<input type = "hidden" id="content'+field_count+'" name="content'+field_count+'" value ="'+replaced_str+'">');
						                      	$($('#1page_count' + add_count).children()[0]).append(realTag);
				                  		}
	                  					else if(isCollection>1){
	                						var name=$(this).children().eq(0).attr("name");
	                						if(name=="collection"){
	                							var resultCollect='';
	                							for(var x=0; x<isCollection; x++){
	                								if($(this).children().eq(x).val().trim()=='')
	                									continue;
	                								resultCollect = resultCollect.concat($(this).children().eq(x).val(),'$');
	                							}

	                							var pTag = $('<p class="u-custom-font u-text u-text-body-color u-text-20">'+resultCollect+'</p>');
	                		                      $($('#1page_count' + add_count).children()[0]).append(pTag);
	                		                      
	                		                      var realTag = $('<input type = "hidden" id="content'+field_count+'" name="content'+field_count+'" value ="'+resultCollect+'">');
	                		                      $($('#1page_count' + add_count).children()[0]).append(realTag);
												$(this).find(":not(:first-child)").remove();
												$(this).find(":first-child").css("width","100%");
	  	                					}
	                	                 }
		 	                  			else{
		 	                  				var name=$(this).children().attr("name");
	                						if(name=="collection" && $(this).children().val().trim()!=''){
	                							var pTag = $('<p class="u-custom-font u-text u-text-body-color u-text-20">#'+resultCollect+'</p>');
	                		                      $($('#1page_count' + add_count).children()[0]).append(pTag);
	                		                      
	                		                      var realTag = $('<input type = "hidden" id="content'+field_count+'" name="content'+field_count+'" value ="#'+resultCollect+'">');
	                		                      $($('#1page_count' + add_count).children()[0]).append(realTag);
	                						}
	                						else{
							                      var pTag = $('<p class="u-custom-font u-text u-text-body-color u-text-20">'+$(this).children().val()+'</p>');
							                      $($('#1page_count' + add_count).children()[0]).append(pTag);
							                      
							                      var realTag = $('<input type = "hidden" id="content'+field_count+'" name="content'+field_count+'" value ="'+$(this).children().val()+'">');
							                      $($('#1page_count' + add_count).children()[0]).append(realTag);
	                						}
	                  					}
						                 $(this).children().val('');
						                 $(this).find('#1page_textLimit').html("(0)");
						                 console.log("value : " + $(this).children().attr("type"));
	
	            					}); //field 수 만큼 반복
	              
					            if(type != "file"){
						             for(var z = field_count+1 ; z < 7;z++){
						                 var trashTag =  $('<input type = "hidden" id="content'+z+'"  name="content'+z+'" value ="">');
						                 $($('#1page_count' + add_count).children()[0]).append(trashTag);
						                 }
					          	}
	
				              var niceTag4 = $('<span  class="u-icon u-icon-circle u-text-custom-color-1 u-icon-13 1page_deleteB makedown" ><svg class="u-svg-link " preserveAspectRatio="xMidYMin slice" viewBox="0 0 365.696 365.696" style=""><use  xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6bc6"></use></svg><svg  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 365.696 365.696" id="svg-6bc6"><path d="m243.1875 182.859375 113.132812-113.132813c12.5-12.5 12.5-32.765624 0-45.246093l-15.082031-15.082031c-12.503906-12.503907-32.769531-12.503907-45.25 0l-113.128906 113.128906-113.132813-113.152344c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503907-12.5 32.769531 0 45.25l113.152344 113.152344-113.128906 113.128906c-12.503907 12.503907-12.503907 32.769531 0 45.25l15.082031 15.082031c12.5 12.5 32.765625 12.5 45.246093 0l113.132813-113.132812 113.128906 113.132812c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082031c12.5-12.503906 12.5-32.769531 0-45.25zm0 0"></path></svg></span>');
				              $($('#1page_count' + add_count).children()[0]).append(niceTag4);
              	  		}//else - 추가 가능할 경우 
                		}//else - 필수 사항 모두 입력한 경우 
                		showNotification();
     			}//resultYN == 1 경우 끝 
	          });//입력된 정보 div에 넣기 끝
	
	          //입력 정보 지우기 
	          $(document).on("click", ".1page_deleteB", function() {
	        	  var resultYN = sessionChecking();
	     			if(resultYN == 1){
	        	  		$($($(this).parent()).parent()).remove();
	     			}//resultYN == 1 경우 끝 
	          }); 

        //정보 저장 
          $("#1page_saveB").click(function () {
              console.log("저장 ");
              var resultYN = sessionChecking();
   			if(resultYN == 1){

	              var check1 = $('input[name=file1]').length;
	              var check2 = $('input[name=add_itemID]').length;
	              console.log("사진 개수: "+check1 +"/ 필드 개수 : "+ check2);
	
	              if(check1 < 1){
	                  $('#1page_alertM').text("사진이 부족합니다. (사진 입력 필수!!!)");
	                  //alert("사진이 없습니다! ");
	              }else if(check2 < 1){
	            	  $('#1page_alertM').text("입력된 정보가 없습니다. (사진 제외) ");
	              }else{
						//포트폴리오 이름, 공개 여부 form에 입력 
		              $('#select_portfolio_name').val($("input[name=1page_pName]").val()); 
		              $('#select_portfolio_url').val($("input[name=url]").val());
		              //form 전송 
		              $("#1page_myForm").attr("action", "portfolio_two");
			          $("#1page_myForm").attr("target", "");
			          $("#1page_myForm").submit();
                   }
   			}//resultYN == 1 경우 끝 
               
          }); 
          
        //미리보기 창 
          $("#1page_preview_button").click(function() {
        	  console.log("preview test");
        	  
        	  var resultYN = sessionChecking();
        	  if(resultYN == 1){
        		  var check1 = $('input[name=file1]').length;
	              var check2 = $('input[name=add_itemID]').length;
	              console.log("사진 개수: "+check1 +"/ 필드 개수 : "+ check2);
        	  
	        	  var length=$("#1page_form").find("input[name=add_itemID]").length;
	        	  var item_id=new Array(length);
	  		      var content1=new Array(length);
	  		      var content2=new Array(length);
	  		      var content3=new Array(length);
	  		      var content4=new Array(length);
	  		      var content5=new Array(length);
	  		      var content6=new Array(length);
	  		      console.log(length);
	  		   	  var template_html=$("input[name=template_html]").val();
	  		   	  var template_color=$("input[name=template_color]").val();
	  		  	  var template_font=$("input[name=template_font]").val();
	  		  	  var template_isVerticle=$("input[name=template_isVerticle]").val();
	  		  	  console.log("template color"+template_color);
	  		  	  console.log("template font"+template_font);
	  		      for(var i=0; i<length; i++){                         
		  		    	item_id[i] = $("#1page_form").find("input[name=add_itemID]").eq(i).val();
		  		    	content1[i] = $("#1page_form").find("input[name=content1]").eq(i).val();
		  		    	content2[i] = $("#1page_form").find("input[name=content2]").eq(i).val();
		  		    	content3[i] = $("#1page_form").find("input[name=content3]").eq(i).val();
		  		    	content4[i] = $("#1page_form").find("input[name=content4]").eq(i).val();
		  		    	content5[i] = $("#1page_form").find("input[name=content5]").eq(i).val();
		  		    	content6[i] = $("#1page_form").find("input[name=content6]").eq(i).val();
	  		      }
					console.log(item_id);
					console.log(content1);

  		       		var sendData = {"template_html":template_html,"template_color":template_color,"template_font":template_font,"item_id": item_id, "content1" : content1 , "content2" : content2 , "content3" : content3 , "content4" : content4 , "content5" : content5 , "content6" : content6};

       	  			console.log(sendData);
		    		  $.ajax({
		                  url: "<%=request.getContextPath()%>/preview",
		                  type:'POST',
		                  traditional : true,
		                  data: sendData,
		                  success:function(result){
		                      $("#1page_preview").html(result);
		                      
		                      if(check1 > 0){ //사진을 추가 했을 때만!!
			                      	$("#1page_preview .picBox>img").attr("src", $("#1page_myForm").find("img").attr("src")); 
									console.log("file추");
		                      }	
		                      if(template_isVerticle=="1"){
			                      $("#1page_preview .wrap.container").css("width","440px"); 
			                      $("#1page_preview .wrap.container").css("height","560px");
		                      }
		                      else{
		                    	  $("#1page_preview .wrap.container").css("width","610px"); 
			                      $("#1page_preview .wrap.container").css("height","409px");
			                  }
		                  },
		                  error:function(request,status,error){
		               	   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		                  }
		          		});
          		}//resultYN == 1 경우 끝
    	  });//미리보기 창 끝

          $('input[name="1page_public"]').on('click', function() {
      	    var valueCheck = $(this).val(); // 체크된 Radio 버튼의 값을 가져옵니다.
				$("#select_portfolio_public").val(valueCheck);
        });

          $('div').on('blur',".collectionInput0",function() {
    		  if($(this).val().trim() != ''){
    			  var fieldID=$(this).parent().children().eq(0).attr("id");
    			  var plusInput=$('<input id="'+fieldID+'" type="input" placeholder="" name="collection"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1 collectionInput1">');
    			  var num=$(this).parent().children().length;
    			  
    			  if(num==1){
    				  $(this).parent().append(plusInput);
    				  $(this).parent().children().css( 'width', '50%' );
    			  }
    		  }
    	 });
          $('div').on('blur',".collectionInput1",function() {
    		  if($(this).val().trim() != ''){
    			  var fieldID=$(this).parent().children().eq(0).attr("id");
    			  var plusInput=$('<input id="'+fieldID+'" type="input" placeholder="" name="collection"  class="u-border-2 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-21 u-white u-input-1 collectionInput2">');
    			  var num=$(this).parent().children().length;
    			  
    			  if(num==2){
    				  $(this).parent().append(plusInput);
    				  $(this).parent().children().css( 'width', '33%' );
    			  }
    		  }
    	 });
    });//document.ready 

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#1page_view1').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }// function readURL end 
</script>
  <style>
  	.notification-container {
		background-color: #ABABAB;
		opacity:0.7;
		color:white;
		border-radius: 10px;
		position: fixed;
		left:40%;
		padding:5px;
		top:100px;
		border : 1px solid black;
		display: none;
		z-index:100002;
	}
			
	.notification-container.show {
		display: flex;
	}
	
	.collectionInput2,.collectionInput1,.collectionInput0{
		display:inline-block;
	}
  </style>      
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-bbf7"><div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
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
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/portfolio_board" style="padding: 10px 20px;">Portfolio구경가기</a>
			</li>
			<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/recruit_info" style="padding: 10px 20px;">직업탐색</a>
			</li>
			<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY페이지</a>
			</li>
			<c:set var="admin" value="${admin }" />
			<c:if test="${admin == 1}">
			<li class="u-nav-item">
			<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>	
			</li>
			</c:if>
			<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>	
			</li>
			</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/portfolio_board" style="padding: 10px 20px;">Portfolio구경가기</a>
</li>
<li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/recruit_info" style="padding: 10px 20px;">직업탐색</a>
</li>
<li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY페이지</a>
</li>
<c:set var="admin" value="${admin}" />
<c:if test="${admin == 1}">
<li class="u-nav-item">
<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>
</li>
</c:if>
<li class="u-nav-item"><a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="<%=request.getContextPath()%>/" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header>
    <section class="u-clearfix u-grey-5 u-section-1" id="sec-428b">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h5 class="u-custom-font u-text u-text-1">새 포트폴리오 만들기</h5><span class="u-custom-color-1 u-hidden-sm u-hidden-xs u-icon u-icon-circle u-spacing-9 u-text-white u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 42 42" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7536"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 42 42" x="0px" y="0px" id="svg-7536" style="enable-background:new 0 0 42 42;"><path d="M37.059,16H26V4.941C26,2.224,23.718,0,21,0s-5,2.224-5,4.941V16H4.941C2.224,16,0,18.282,0,21s2.224,5,4.941,5H16v11.059
	C16,39.776,18.282,42,21,42s5-2.224,5-4.941V26h11.059C39.776,26,42,23.718,42,21S39.776,16,37.059,16z"></path></svg></span>
	
	<!-- 미리보기 버튼   -->
        <div class="u-align-left u-container-style u-dialog-link u-group u-radius-21 u-shape-round u-white u-group-1" id="1page_preview_button" data-href="#sec-0d99">
          <div class="u-container-layout u-container-layout-1"></div>
        </div><span class="u-hidden-xs u-icon u-icon-circle u-text-custom-color-3 u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-dd08"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 56.966 56.966" x="0px" y="0px" id="svg-dd08" style="enable-background:new 0 0 56.966 56.966;"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23
	s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92
	c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17
	s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg></span>
        <p class="u-custom-font u-text u-text-custom-color-3 u-text-2">미리보기</p>
        
        <div class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
        
          <ul class="u-border-1 u-border-grey-75 u-custom-color-2 u-spacing-15 u-tab-list u-unstyled u-tab-list-1" role="tablist">
            <li class="u-tab-item" role="presentation">
              <a class="active u-active-white u-border-3 u-border-active-custom-color-1 u-border-no-bottom u-button-style u-custom-font u-tab-link u-text-active-black u-text-hover-custom-color-3 u-text-white u-tab-link-1" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">1 템플릿 선택</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-white u-border-3 u-border-active-custom-color-1 u-border-no-bottom u-button-style u-custom-font u-tab-link u-text-active-black u-text-hover-custom-color-3 u-text-white u-tab-link-2" id="link-tab-2917" href="#tab-2917" role="tab" aria-controls="tab-2917" aria-selected="false">2 정보 입력</a>
            </li>
            <li class="u-tab-item u-tab-item-3" role="presentation">
              <a class="u-active-white u-border-3 u-border-active-custom-color-1 u-border-no-bottom u-button-style u-custom-font u-tab-link u-text-active-black u-text-hover-custom-color-3 u-text-white u-tab-link-3" id="link-tab-39b8" href="#tab-39b8" role="tab" aria-controls="tab-39b8" aria-selected="false">3 설정</a>
            </li>
          </ul>
          <div class="u-tab-content">
          
          <!-- 1. 템플릿  include  -->
          <jsp:include page="/WEB-INF/views/portfolio_zero.jsp"/>
            
          <!-- 입력시 문구 -->
          <div class="1page_ notification-container" id="notification-container">
		    <span>포트폴리오에 데이터를 입력했습니다.</span>
		  </div>
          <script>
          const notification = document.getElementById('notification-container');
       	  // Show notification
          const showNotification = () => {
            notification.classList.add('show')
            setTimeout(() => {
              notification.classList.remove('show')
            }, 1000)
          }
          </script>
            <!-- 2. 정보 입력  -->
            <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-2" id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
              <div class="u-container-layout u-container-layout-6">
                <div class="u-border-2 u-border-white u-container-style u-grey-5 u-group u-radius-21 u-shape-round u-group-5">
                  <div class="u-container-layout u-container-layout-7">
                    <h6 class="u-align-left u-custom-font u-text u-text-6">추천 항목</h6>
                    <div class="u-align-left u-border-2 u-border-grey-5 u-container-style u-expanded-width u-group u-shape-rectangle u-group-6">
                        
                       <!-- 여러 항목 추천 div --><div id="1page_categoryDiv" class="u-container-layout u-container-layout-8">
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="u-border-2 u-border-custom-color-2 u-container-style u-group u-opacity u-opacity-95 u-radius-21 u-shape-round u-white u-group-11">
                  <div class="u-container-layout u-container-layout-13" style="overflow:scroll; height:460px;">
                    <h6 class="u-custom-font u-text u-text-custom-color-3 u-text-15">입력된 정보</h6>
                    <span class="u-hidden-sm u-hidden-xs u-icon u-icon-circle u-text-custom-color-2 u-icon-8"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 405.272 405.272" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-436d"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 405.272 405.272" x="0px" y="0px" id="svg-436d" style="enable-background:new 0 0 405.272 405.272;"><g><path d="M393.401,124.425L179.603,338.208c-15.832,15.835-41.514,15.835-57.361,0L11.878,227.836   c-15.838-15.835-15.838-41.52,0-57.358c15.841-15.841,41.521-15.841,57.355-0.006l81.698,81.699L336.037,67.064   c15.841-15.841,41.523-15.829,57.358,0C409.23,82.902,409.23,108.578,393.401,124.425z"></path>
</g></svg></span>
                    <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-12">
                    <form action="portfolio_two" id="1page_myForm" method="POST" enctype="multipart/form-data" onsubmit="return isValidForm()">
                    
                    <!-- portfolio_Id 생성 정보   -->
                    	<input type="hidden" id="select_template_id" name="template_id" value="3" readonly/>
						<input type="hidden" id="select_template_html" name="template_html" value="template3" readonly/>
						<input type="hidden" id="select_portfolio_name" name="portfolio_name" value="" readonly/>
						<input type="hidden" id="select_portfolio_public" name="portfolio_public" value="1" readonly/>
						<input type="hidden" id="select_portfolio_id" name="portfolio_id" value="" readonly/>
						<input type="hidden" id="select_template_color" name="template_color" value="13" readonly/>
						<input type="hidden" id="select_template_font" name="template_font" value="" readonly/>
						<input type="hidden" id="select_template_isVerticle" name="template_isVerticle" value="0" readonly/>
						<input type="hidden" id="select_template_url" name="url" value="" readonly/>
                      <div id="1page_form" class="u-container-layout u-container-layout-14">
                      <!--  개인정보 -->
                        <div class="u-align-left u-container-style u-expanded-width u-grey-15 u-group u-group-13">
                          <div class="u-container-layout u-container-layout-15">
                            <div class="u-border-1 u-border-grey-50 u-line u-line-vertical u-line-1"></div>
                            <p class="u-custom-font u-text u-text-grey-40 u-text-16">${sessionScope.Name}</p><span class="u-icon u-icon-circle u-text-custom-color-9 u-icon-9"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-fc46"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-fc46" style="enable-background:new 0 0 512 512;"><g><g><path d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148    C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962    c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216    h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40    c59.551,0,108,48.448,108,108S315.551,256,256,256z"></path>
</g>
</g></svg></span><span class="u-icon u-icon-circle u-text-custom-color-9 u-icon-10"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.021 512.021" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-c0b4"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512.021 512.021" id="svg-c0b4"><g><path d="m367.988 512.021c-16.528 0-32.916-2.922-48.941-8.744-70.598-25.646-136.128-67.416-189.508-120.795s-95.15-118.91-120.795-189.508c-8.241-22.688-10.673-46.108-7.226-69.612 3.229-22.016 11.757-43.389 24.663-61.809 12.963-18.501 30.245-33.889 49.977-44.5 21.042-11.315 44.009-17.053 68.265-17.053 7.544 0 14.064 5.271 15.645 12.647l25.114 117.199c1.137 5.307-.494 10.829-4.331 14.667l-42.913 42.912c40.482 80.486 106.17 146.174 186.656 186.656l42.912-42.913c3.838-3.837 9.361-5.466 14.667-4.331l117.199 25.114c7.377 1.581 12.647 8.101 12.647 15.645 0 24.256-5.738 47.224-17.054 68.266-10.611 19.732-25.999 37.014-44.5 49.977-18.419 12.906-39.792 21.434-61.809 24.663-6.899 1.013-13.797 1.518-20.668 1.519zm-236.349-479.321c-31.995 3.532-60.393 20.302-79.251 47.217-21.206 30.265-26.151 67.49-13.567 102.132 49.304 135.726 155.425 241.847 291.151 291.151 34.641 12.584 71.866 7.64 102.132-13.567 26.915-18.858 43.685-47.256 47.217-79.251l-95.341-20.43-44.816 44.816c-4.769 4.769-12.015 6.036-18.117 3.168-95.19-44.72-172.242-121.772-216.962-216.962-2.867-6.103-1.601-13.349 3.168-18.117l44.816-44.816z"></path>
</g></svg></span>
                            <p class="u-custom-font u-text u-text-grey-40 u-text-17">01012345678</p><span class="u-icon u-icon-circle u-text-custom-color-9 u-icon-11"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e5e2"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-e5e2" style="enable-background:new 0 0 512 512;"><g><g><path d="M467,61H45C20.218,61,0,81.196,0,106v300c0,24.72,20.128,45,45,45h422c24.72,0,45-20.128,45-45V106    C512,81.28,491.872,61,467,61z M460.786,91L256.954,294.833L51.359,91H460.786z M30,399.788V112.069l144.479,143.24L30,399.788z     M51.213,421l144.57-144.57l50.657,50.222c5.864,5.814,15.327,5.795,21.167-0.046L317,277.213L460.787,421H51.213z M482,399.787    L338.213,256L482,112.212V399.787z"></path>
</g>
</g></svg></span>
                            <p class="u-custom-font u-text u-text-grey-40 u-text-18">${sessionScope.email}</p><span class="u-icon u-icon-circle u-text-grey-30 u-icon-12"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 469.333 469.333" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0ca3"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 469.333 469.333" x="0px" y="0px" id="svg-0ca3" style="enable-background:new 0 0 469.333 469.333;"><g><g><path d="M413.549,55.32c-38.14-37.902-88.598-69.355-109.208-48.841c-1.59,1.576-3.306,3.89-4.608,6.997    c-13.4,17.888-20.938,38.433-22.195,60.103l-78.729,57.225c-42.179-7.432-84.663,0.883-120.261,23.083    c-10.393,6.491-16.022,18.659-14.336,31.015c7.008,50.96,29.048,97.164,61.365,134.153L2.851,451.403    c-3.901,4.209-3.787,10.752,0.271,14.804c2.081,2.084,4.807,3.125,7.532,3.125c2.601,0,5.202-0.948,7.251-2.855l132.164-122.9    c36.94,32.361,83.078,54.428,133.964,61.442c1.467,0.208,2.923,0.302,4.37,0.302c10.757,0,20.891-5.47,26.602-14.659    c16.948-27.244,25.905-58.561,25.905-90.577c0-9.979-1.138-20.124-2.946-30.246l57.132-78.436    c23.49-1.337,45.689-9.828,64.503-25.375c1.012-0.701,2.206-1.07,3.107-1.965c3.027-3,6.627-8.481,6.627-17.555    C469.333,124.779,447.444,88.981,413.549,55.32z"></path>
</g>
</g></svg></span>
                          </div>
                        </div>
                       
                        

                      </div>
                      </form>
                    </div>
                  </div>
                </div>
               <p id="1page_alertM" style="text-align: right; color: red;"></p>
              </div>
            </div>
            
            <!-- 3. 설정  include -->
            <jsp:include page="/WEB-INF/views/portfolio_two.jsp"/>
            
            
          </div>
        </div><span class="u-hidden-md u-hidden-sm u-hidden-xs u-icon u-icon-circle u-text-grey-30 u-icon-16" data-href="https://nicepage.com"><svg class="u-svg-link u-flip-horizontal" preserveAspectRatio="xMidYMin slice" viewBox="0 0 492.004 492.004" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ce59"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 492.004 492.004" x="0px" y="0px" id="svg-ce59" style="enable-background:new 0 0 492.004 492.004;"><g><g><path d="M382.678,226.804L163.73,7.86C158.666,2.792,151.906,0,144.698,0s-13.968,2.792-19.032,7.86l-16.124,16.12    c-10.492,10.504-10.492,27.576,0,38.064L293.398,245.9l-184.06,184.06c-5.064,5.068-7.86,11.824-7.86,19.028    c0,7.212,2.796,13.968,7.86,19.04l16.124,16.116c5.068,5.068,11.824,7.86,19.032,7.86s13.968-2.792,19.032-7.86L382.678,265    c5.076-5.084,7.864-11.872,7.848-19.088C390.542,238.668,387.754,231.884,382.678,226.804z"></path>
</g>
</g></svg></span>
        <div id="1page_saveB" class="u-container-style u-custom-color-2 u-group u-radius-21 u-shape-round u-group-18">
          <div class="u-container-layout u-container-layout-21">
            <p class="u-align-center u-custom-font u-text u-text-body-alt-color u-text-default u-text-25">저&nbsp; 장</p>
          </div>
        </div>
      </div>
    </section>
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-custom-font u-small-text u-text u-text-variant u-text-1">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
    
    
  <!--  미리보기 모달 창 -->
  <section class="u-align-center u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-section-4" id="sec-0d99">
      <div class="u-align-center u-container-style u-dialog u-white u-dialog-1"style="overflow:scroll; background-color:#EAEAEA;">
        <div class="u-container-layout u-valign-top u-container-layout-1" style="height:700px" >
        	<div id= "1page_preview" style="margin:0 auto;"></div>
          <!-- <img alt="" class="u-expanded-width u-image u-image-default u-image-1" data-image-width="1500" data-image-height="1001" src="images/2.svg"> -->
          
          <!-- ok 버튼 -->
          <a  xlink:href="#svg-6e8b" class="u-btn u-btn-round u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-1 u-radius-50 u-text-body-alt-color u-btn-1">OK</a>
        </div>
        
        <!-- x 버튼 -->
        <button class="u-dialog-close-button u-icon u-icon-circle u-text-black u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6e8b"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-6e8b"><rect x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2" height="16"></rect><rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16" height="2"></rect></svg></button>
      </div>
    </section>
    
    
    <style type="text/css">
    .noenter{
		white-space:nowrap;
	}
	.immodal{
		 height: 400px;
		 overflow-y: auto;
	}
	img.fixplace{
		position: relative;
		top: 120px;
	}
	div.fixplace2{
		float:left;
		width:50%;
		margin-left:25%;
		margin-top:10%;
	}
	div.fixplace3{
		float:right;
		height:80px;
	}
	.fileAddB{
		margin-top:7%;
	}
	/* .otherAddB{
		position:absolute;
		top:-30px;
		left:82%;
	} */
	.longersize, .longersize2{
		float:left;
	}
	.longersize2{
		margin-bottom: 300px;
	}
	.modalscroll{
		display: static;
		height: 300px;
		overflow: scroll;
	}
	.makedown_helper{
		display: table;
	}
	.makedown{
		float:left;
		display: table-cell; vertical-align: middle;
	}
	.u-tab-content{
   		height:400px;
     }
     .u-form{
     	display:inline-block;
     	height:90%;
     	padding-top:2%;
     }
     .fileLabel{
     	float:left;
     	position:absolute;
     	margin-left:27%;
     	margin-top:5%;
     }
     .1page_tm{
     	margin-top:2%;
     }
    </style>
    
    
    <style>
    
    .u-section-4 {
  min-height: 1352px;
}

.u-section-4 .u-dialog-1 {
  width: 984px;
  min-height: 632px;
  height: auto;
  margin: 84px auto 60px;
}

.u-section-4 .u-container-layout-1 {
  padding: 65px 30px 0;
}

.u-section-4 .u-image-1 {
  height: 470px;
  margin-top: 0;
  margin-bottom: 0;
}

.u-section-4 .u-btn-1 {
  border-style: none;
  font-size: 1.125rem;
  letter-spacing: 1px;
  background-image: none;
  font-family: NanumGothic;
  font-weight: 800;
  text-transform: none;
  margin: 25px auto 0;
  padding: 10px 73px;
}

.u-section-4 .u-icon-1 {
  width: 31px;
  height: 31px;
  background-image: none;
  left: auto;
  top: 20px;
  position: absolute;
  right: 20px;
}

@media (max-width: 1199px) {
  .u-section-4 .u-dialog-1 {
    width: 940px;
  }

  .u-section-4 .u-image-1 {
    height: 470px;
  }
}

@media (max-width: 991px) {
  .u-section-4 .u-dialog-1 {
    width: 720px;
  }

  .u-section-4 .u-container-layout-1 {
    padding-top: 70px;
  }
}

@media (max-width: 767px) {
  .u-section-4 .u-dialog-1 {
    width: 540px;
    min-height: 514px;
  }

  .u-section-4 .u-container-layout-1 {
    padding-top: 65px;
  }
}

@media (max-width: 575px) {
  .u-section-4 .u-dialog-1 {
    width: 984px;
    min-height: 632px;
  }

  .u-section-4 .u-image-1 {
    height: 470px;
  }
}</style>

<!-- 1번 카테고리 modal -->
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-section-5" id="1page_section1">
      <div class="u-container-style u-dialog u-grey-10 u-radius-21 u-shape-round u-dialog-1"style="height:55vh">
        <div id="1page_sectionDiv_1" class="u-container-layout u-container-layout-1" >
        <!-- 삭제 구역    -->
          
          <!-- 삭제 구역  -->
        </div><button class="u-dialog-close-button u-icon u-text-grey-40 u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-95b6"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-95b6"><rect x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2" height="16"></rect><rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16" height="2"></rect></svg></button>
      </div>
    </section><style>
    
/*     .u-section-5 {
  min-height: 1760px;
} */

.u-section-5 .u-dialog-1 {
  width: 814px;
  min-height: 700px;
  height: auto;
  margin: 89px auto 60px;
}

.u-section-5 .u-container-layout-1 {
  padding: 27px 30px 25px;
}

.u-section-5 .u-text-1 {
  font-family: NanumGothic;
  font-weight: 700;
  margin: 0 -60px 0 0;
}

.u-section-5 .u-tabs-1 {
  min-height: 622px;
  height: auto;
  width: 754px;
  margin: 15px 0 0;
}

.u-section-5 .u-tab-list-1 {
  background-image: none;
}

.u-section-5 .u-tab-link-1 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-5 .u-tab-link-2 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-5 .u-tab-pane-1 {
  background-image: none;
}

.u-section-5 .u-container-layout-2 {
  padding: 30px;
}

.u-section-5 .u-group-1 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 257px;
}

.u-section-5 .u-container-layout-3 {
  padding: 20px 15px 15px;
}

.u-section-5 .u-text-2 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 -63px 0 33px;
}

.u-section-5 .u-group-2 {
  margin-top: 13px;
  margin-bottom: 0;
  min-height: 180px;
}

.u-section-5 .u-container-layout-4 {
  padding: 20px 20px 15px;
}

.u-section-5 .u-group-3 {
  width: 108px;
  min-height: 41px;
}

.u-section-5 .u-container-layout-5 {
  padding: 6px 10px;
}

.u-section-5 .u-text-3 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-5 .u-group-4 {
  min-height: 46px;
  width: 188px;
  margin: -46px auto 0 122px;
}

.u-section-5 .u-container-layout-6 {
  padding: 5px;
}

.u-section-5 .u-icon-1 {
  height: 24px;
  width: 24px;
  background-image: none;
  margin: 6px auto 0 44px;
}

.u-section-5 .u-text-4 {
  font-family: NanumGothic;
  font-weight: 700;
  margin: -24px 33px 0 77px;
}

.u-section-5 .u-image-1 {
  width: 109px;
  height: 124px;
  margin: -124px auto 0 0;
}

.u-section-5 .u-text-5 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 0.75rem;
  margin: -71px 289px 0 125px;
}

.u-section-5 .u-group-5 {
  min-height: 50px;
  margin-top: 13px;
  margin-bottom: 0;
}

.u-section-5 .u-container-layout-7 {
  padding: 15px;
}

.u-section-5 .u-text-6 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-5 .u-icon-2 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-5 .u-group-6 {
  width: 694px;
  min-height: 179px;
  margin: 13px 0 0;
}

.u-section-5 .u-container-layout-8 {
  padding: 30px 30px 25px;
}

.u-section-5 .u-group-7 {
  width: 108px;
  min-height: 41px;
  margin: 83px 0 0 auto;
}

.u-section-5 .u-container-layout-9 {
  padding: 6px 10px;
}

.u-section-5 .u-text-7 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-5 .u-image-2 {
  width: 109px;
  height: 124px;
  margin: -124px auto 0 0;
}

.u-section-5 .u-tab-pane-2 {
  background-image: none;
}

.u-section-5 .u-container-layout-10 {
  padding: 30px;
}

.u-section-5 .u-group-8 {
  min-height: 267px;
  margin-top: 0;
  margin-bottom: 0;
}

.u-section-5 .u-container-layout-11 {
  padding: 20px 15px;
}

.u-section-5 .u-text-8 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-5 .u-group-9 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 183px;
  width: 660px;
}

.u-section-5 .u-container-layout-12 {
  padding: 20px 30px;
}

.u-section-5 .u-form-1 {
  height: 199px;
  width: 600px;
  margin: 0;
}

.u-section-5 .u-form-group-1 {
  margin-left: 0;
}

.u-section-5 .u-input-1 {
  font-family: NanumGothic;
}

.u-section-5 .u-btn-1 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-5 .u-group-10 {
  min-height: 55px;
  margin-bottom: 0;
  margin-top: 9px;
}

.u-section-5 .u-container-layout-13 {
  padding: 15px;
}

.u-section-5 .u-text-9 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-5 .u-icon-3 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-5 .u-group-11 {
  min-height: 105px;
  width: 651px;
  margin: 9px auto 0 23px;
}

.u-section-5 .u-container-layout-14 {
  padding: 30px 30px 25px;
}

.u-section-5 .u-text-10 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-5 .u-group-12 {
  width: 109px;
  min-height: 46px;
  margin: -46px 0 0 auto;
}

.u-section-5 .u-container-layout-15 {
  padding: 6px 10px;
}

.u-section-5 .u-text-11 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-5 .u-group-13 {
  min-height: 105px;
  width: 651px;
  margin: 10px auto 0 22px;
}

.u-section-5 .u-container-layout-16 {
  padding: 30px 30px 25px;
}

.u-section-5 .u-text-12 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-5 .u-group-14 {
  width: 109px;
  min-height: 46px;
  margin: -46px 0 0 auto;
}

.u-section-5 .u-container-layout-17 {
  padding: 6px 10px;
}

.u-section-5 .u-text-13 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-5 .u-icon-4 {
  width: 20px;
  height: 20px;
}

@media (max-width: 1199px) {
  .u-section-5 .u-text-2 {
    margin-right: -63px;
  }

  .u-section-5 .u-text-3 {
    width: 51px;
  }

  .u-section-5 .u-group-4 {
    width: 188px;
    margin-top: -46px;
    margin-left: 122px;
  }

  .u-section-5 .u-icon-1 {
    width: 24px;
    margin-left: 44px;
  }

  .u-section-5 .u-text-4 {
    margin-top: -24px;
    margin-left: 77px;
  }

  .u-section-5 .u-image-1 {
    width: 109px;
    height: 124px;
    margin-top: -124px;
  }

  .u-section-5 .u-text-5 {
    margin-top: -72px;
    margin-right: 289px;
    margin-left: 125px;
  }

  .u-section-5 .u-group-5 {
    margin-top: 9px;
    min-height: 50px;
  }

  .u-section-5 .u-text-6 {
    margin-top: -5px;
    margin-right: 127px;
  }

  .u-section-5 .u-icon-2 {
    height: 20px;
    width: 20px;
    margin-top: -24px;
    margin-left: 229px;
  }

  .u-section-5 .u-group-6 {
    min-height: 180px;
    margin-top: 9px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-5 .u-text-7 {
    width: 51px;
  }

  .u-section-5 .u-image-2 {
    width: 109px;
    height: 124px;
    margin-top: -124px;
  }

  .u-section-5 .u-text-8 {
    margin-top: -1px;
    margin-right: -63px;
  }

  .u-section-5 .u-group-9 {
    min-height: 183px;
  }

  .u-section-5 .u-group-10 {
    margin-top: 10px;
    min-height: 55px;
  }

  .u-section-5 .u-text-9 {
    margin-top: -5px;
    margin-right: 127px;
  }

  .u-section-5 .u-icon-3 {
    height: 20px;
    width: 20px;
    margin-top: -24px;
    margin-left: 229px;
  }

  .u-section-5 .u-group-11 {
    min-height: 97px;
    width: 694px;
    margin-top: 11px;
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-5 .u-text-10 {
    width: auto;
    margin-right: 158px;
  }

  .u-section-5 .u-group-12 {
    width: 109px;
    margin-top: -50px;
    margin-right: 0;
  }

  .u-section-5 .u-text-11 {
    width: 51px;
  }

  .u-section-5 .u-group-13 {
    width: 694px;
    margin-top: 11px;
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-5 .u-text-12 {
    margin-right: 158px;
  }

  .u-section-5 .u-group-14 {
    width: 109px;
    margin-right: 0;
  }

  .u-section-5 .u-text-13 {
    width: 51px;
  }
}

@media (max-width: 991px) {
  .u-section-5 .u-dialog-1 {
    width: 720px;
    min-height: 700px;
  }

  .u-section-5 .u-text-1 {
    margin-right: 0;
  }

  .u-section-5 .u-tabs-1 {
    min-height: 615px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-5 .u-text-2 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-5 .u-text-5 {
    width: auto;
    margin-top: -72px;
    margin-right: 152px;
    margin-left: 128px;
  }

  .u-section-5 .u-group-5 {
    margin-top: 7px;
    min-height: 59px;
  }

  .u-section-5 .u-text-6 {
    width: auto;
    margin-top: 0;
    margin-right: 152px;
    margin-left: 211px;
  }

  .u-section-5 .u-icon-2 {
    margin-top: -24px;
    margin-bottom: 5px;
    margin-left: 188px;
  }

  .u-section-5 .u-group-6 {
    margin-top: 7px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-5 .u-text-8 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-5 .u-group-9 {
    width: 570px;
  }

  .u-section-5 .u-form-1 {
    width: 510px;
  }

  .u-section-5 .u-group-10 {
    margin-top: 6px;
    min-height: 60px;
  }

  .u-section-5 .u-text-9 {
    width: auto;
    margin-top: 1px;
    margin-right: 72px;
    margin-left: 219px;
  }

  .u-section-5 .u-icon-3 {
    margin-top: -20px;
    margin-right: 357px;
    margin-left: 189px;
  }

  .u-section-5 .u-group-11 {
    min-height: 81px;
    margin-top: 6px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-5 .u-text-10 {
    margin-right: 64px;
  }

  .u-section-5 .u-text-11 {
    margin-top: 4px;
  }

  .u-section-5 .u-group-13 {
    min-height: 81px;
    width: 600px;
  }

  .u-section-5 .u-text-12 {
    margin-right: 64px;
  }

  .u-section-5 .u-group-14 {
    margin-top: -50px;
  }
}

@media (max-width: 767px) {
  .u-section-5 .u-dialog-1 {
    width: 540px;
  }

  .u-section-5 .u-container-layout-1 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-container-layout-2 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-container-layout-3 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-container-layout-4 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-text-5 {
    width: 200px;
    margin-top: -71px;
    margin-left: auto;
    margin-right: auto;
  }

  .u-section-5 .u-container-layout-7 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-text-6 {
    margin-right: 107px;
    margin-left: 166px;
  }

  .u-section-5 .u-icon-2 {
    margin-top: 20px;
    margin-right: 107px;
    margin-left: 166px;
  }

  .u-section-5 .u-container-layout-8 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-container-layout-10 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-container-layout-11 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-group-9 {
    width: 480px;
  }

  .u-section-5 .u-container-layout-12 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-form-1 {
    width: 460px;
  }

  .u-section-5 .u-container-layout-13 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-text-9 {
    margin-right: 27px;
    margin-left: 174px;
  }

  .u-section-5 .u-icon-3 {
    margin-top: -24px;
    margin-right: auto;
    margin-left: 229px;
  }

  .u-section-5 .u-group-11 {
    min-height: 82px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-5 .u-container-layout-14 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-text-10 {
    margin-right: 140px;
    margin-left: 53px;
  }

  .u-section-5 .u-group-12 {
    margin-top: -49px;
  }

  .u-section-5 .u-group-13 {
    min-height: 105px;
    width: 500px;
  }

  .u-section-5 .u-container-layout-16 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-5 .u-text-12 {
    width: auto;
    margin-right: 0;
    margin-left: 47px;
  }

  .u-section-5 .u-group-14 {
    margin-top: -46px;
  }
}

@media (max-width: 575px) {
  .u-section-5 .u-dialog-1 {
    width: 814px;
    min-height: 727px;
  }

  .u-section-5 .u-container-layout-1 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-text-1 {
    margin-right: -60px;
  }

  .u-section-5 .u-tabs-1 {
    min-height: 622px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-5 .u-container-layout-2 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-container-layout-3 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-5 .u-text-2 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-5 .u-container-layout-4 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-group-3 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-5 .u-text-3 {
    width: 51px;
  }

  .u-section-5 .u-group-4 {
    width: 188px;
    margin-top: -46px;
    margin-left: 122px;
  }

  .u-section-5 .u-icon-1 {
    width: 24px;
    margin-left: 44px;
  }

  .u-section-5 .u-text-4 {
    margin-top: -24px;
    margin-left: 77px;
  }

  .u-section-5 .u-image-1 {
    width: 109px;
    height: 124px;
    margin-top: -124px;
  }

  .u-section-5 .u-text-5 {
    margin-top: -71px;
    margin-right: 289px;
    margin-left: 125px;
    width: auto;
  }

  .u-section-5 .u-group-5 {
    min-height: 50px;
    margin-top: 13px;
  }

  .u-section-5 .u-container-layout-7 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-5 .u-text-6 {
    margin-right: 127px;
    margin-left: 258px;
    width: auto;
  }

  .u-section-5 .u-icon-2 {
    height: 20px;
    width: 20px;
    margin: -24px auto 0 229px;
  }

  .u-section-5 .u-group-6 {
    min-height: 179px;
    margin-top: 13px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-5 .u-container-layout-8 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-text-7 {
    width: 51px;
  }

  .u-section-5 .u-image-2 {
    width: 109px;
    height: 124px;
    margin-top: -124px;
  }

  .u-section-5 .u-container-layout-10 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-container-layout-11 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-5 .u-text-8 {
    margin-top: -1px;
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-5 .u-group-9 {
    min-height: 183px;
    width: 660px;
  }

  .u-section-5 .u-container-layout-12 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-form-1 {
    width: 600px;
  }

  .u-section-5 .u-group-10 {
    min-height: 55px;
    margin-top: 9px;
  }

  .u-section-5 .u-container-layout-13 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-5 .u-text-9 {
    margin-top: 0;
    margin-right: 127px;
    margin-left: 258px;
    width: auto;
  }

  .u-section-5 .u-icon-3 {
    height: 20px;
    width: 20px;
    margin-top: -24px;
    margin-left: 229px;
  }

  .u-section-5 .u-group-11 {
    min-height: 105px;
    margin-top: 9px;
    width: auto;
    margin-right: initial;
    margin-left: initial;
  }

  .u-section-5 .u-container-layout-14 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-text-10 {
    margin-right: 158px;
    margin-left: 0;
    width: auto;
  }

  .u-section-5 .u-group-12 {
    margin-top: -46px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-5 .u-text-11 {
    width: 51px;
    margin-top: 0;
  }

  .u-section-5 .u-group-13 {
    width: 651px;
    margin-top: 10px;
    margin-right: auto;
    margin-left: 22px;
  }

  .u-section-5 .u-container-layout-16 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-5 .u-text-12 {
    margin-right: 158px;
    margin-left: 0;
    width: auto;
  }

  .u-section-5 .u-group-14 {
    width: 109px;
    margin-right: 0;
  }

  .u-section-5 .u-text-13 {
    width: 51px;
  }
}</style>

<!-- 2번 카테고리 modal  -->
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-section-6" id="1page_section2">
      <div class="u-align-left u-container-style u-dialog u-grey-10 u-radius-21 u-shape-round u-dialog-1" style="height:40vh">
        <div id="1page_sectionDiv_2" class="u-container-layout u-container-layout-1">
        <!-- 삭제 구역    -->
          
          <!-- 삭제 구역    -->
        </div><button class="u-dialog-close-button u-icon u-text-grey-40 u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-2bec"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-2bec"><rect x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2" height="16"></rect><rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16" height="2"></rect></svg></button>
      </div>
    </section><style>/* .u-section-6 {
  min-height: 1760px;
} */

.u-section-6 .u-dialog-1 {
  width: 800px;
  min-height: 700px;
  margin: 88px auto 60px;
}

.u-section-6 .u-container-layout-1 {
  padding: 30px 30px 22px;
}

.u-section-6 .u-text-1 {
  font-family: NanumGothic;
  font-weight: 700;
  margin: 0 -74px 0 0;
}

.u-section-6 .u-tabs-1 {
  margin-top: 15px;
  min-height: 662px;
  height: auto;
  margin-bottom: 0;
}

.u-section-6 .u-tab-list-1 {
  background-image: none;
}

.u-section-6 .u-tab-link-1 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-6 .u-tab-link-2 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-6 .u-tab-pane-1 {
  background-image: none;
}

.u-section-6 .u-container-layout-2 {
  padding: 30px;
}

.u-section-6 .u-group-1 {
  min-height: 267px;
  margin-top: 0;
  margin-bottom: 0;
}

.u-section-6 .u-container-layout-3 {
  padding: 20px 15px;
}

.u-section-6 .u-text-2 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-6 .u-group-2 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-6 .u-container-layout-4 {
  padding: 20px 30px;
}

.u-section-6 .u-form-1 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-6 .u-form-group-1 {
  margin-left: 0;
}

.u-section-6 .u-label-1 {
  padding: 30px;
}

.u-section-6 .u-input-1 {
  font-family: NanumGothic;
}

.u-section-6 .u-btn-1 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-6 .u-group-3 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-6 .u-container-layout-5 {
  padding: 15px;
}

.u-section-6 .u-text-3 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-6 .u-icon-1 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-6 .u-group-4 {
  min-height: 105px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-6 .u-container-layout-6 {
  padding: 30px 30px 25px;
}

.u-section-6 .u-text-4 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-6 .u-group-5 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-6 .u-container-layout-7 {
  padding: 6px 10px;
}

.u-section-6 .u-text-5 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-6 .u-group-6 {
  min-height: 105px;
  width: 680px;
  margin: 10px 0 0;
}

.u-section-6 .u-container-layout-8 {
  padding: 30px 30px 25px;
}

.u-section-6 .u-text-6 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-6 .u-group-7 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-6 .u-container-layout-9 {
  padding: 6px 10px;
}

.u-section-6 .u-text-7 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-6 .u-tab-pane-2 {
  background-image: none;
}

.u-section-6 .u-container-layout-10 {
  padding: 30px;
}

.u-section-6 .u-group-8 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 267px;
}

.u-section-6 .u-container-layout-11 {
  padding: 20px 15px;
}

.u-section-6 .u-text-8 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-6 .u-group-9 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-6 .u-container-layout-12 {
  padding: 20px 30px;
}

.u-section-6 .u-form-2 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-6 .u-form-group-3 {
  margin-left: 0;
}

.u-section-6 .u-input-2 {
  font-family: NanumGothic;
}

.u-section-6 .u-btn-2 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-6 .u-group-10 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-6 .u-container-layout-13 {
  padding: 15px;
}

.u-section-6 .u-text-9 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-6 .u-icon-2 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-6 .u-group-11 {
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-6 .u-container-layout-14 {
  padding: 30px 30px 25px;
}

.u-section-6 .u-text-10 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-6 .u-group-12 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-6 .u-container-layout-15 {
  padding: 6px 10px;
}

.u-section-6 .u-text-11 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-6 .u-group-13 {
  min-height: 105px;
  width: 680px;
  margin: 10px 0 0;
}

.u-section-6 .u-container-layout-16 {
  padding: 30px 30px 25px;
}

.u-section-6 .u-text-12 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-6 .u-group-14 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-6 .u-container-layout-17 {
  padding: 6px 10px;
}

.u-section-6 .u-text-13 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-6 .u-icon-3 {
  width: 20px;
  height: 20px;
}

@media (max-width: 1199px) {
  .u-section-6 .u-dialog-1 {
    height: auto;
  }
}

@media (max-width: 991px) {
  .u-section-6 .u-dialog-1 {
    width: 720px;
  }

  .u-section-6 .u-text-1 {
    margin-right: 0;
  }

  .u-section-6 .u-text-2 {
    margin-right: 0;
    margin-left: 0;
  }

  .u-section-6 .u-form-1 {
    width: 510px;
  }

  .u-section-6 .u-text-3 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-6 .u-text-4 {
    margin-right: 78px;
  }

  .u-section-6 .u-group-6 {
    width: 600px;
  }

  .u-section-6 .u-text-6 {
    margin-right: 78px;
  }

  .u-section-6 .u-text-8 {
    margin-right: 0;
    margin-left: 0;
  }

  .u-section-6 .u-form-2 {
    width: 510px;
  }

  .u-section-6 .u-text-9 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-6 .u-text-10 {
    margin-right: 78px;
  }

  .u-section-6 .u-group-13 {
    width: 600px;
  }

  .u-section-6 .u-text-12 {
    margin-right: 78px;
  }
}

@media (max-width: 767px) {
  .u-section-6 .u-dialog-1 {
    width: 540px;
  }

  .u-section-6 .u-container-layout-1 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-container-layout-2 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-container-layout-3 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-container-layout-4 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-form-1 {
    width: 460px;
  }

  .u-section-6 .u-label-1 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-container-layout-5 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-text-3 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-6 .u-group-4 {
    min-height: 76px;
  }

  .u-section-6 .u-container-layout-6 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-text-4 {
    margin-right: 18px;
  }

  .u-section-6 .u-group-5 {
    margin-top: -25px;
  }

  .u-section-6 .u-group-6 {
    min-height: 76px;
    width: 500px;
  }

  .u-section-6 .u-container-layout-8 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-text-6 {
    margin-right: 18px;
  }

  .u-section-6 .u-group-7 {
    margin-top: -25px;
  }

  .u-section-6 .u-container-layout-10 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-container-layout-11 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-container-layout-12 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-form-2 {
    width: 460px;
  }

  .u-section-6 .u-container-layout-13 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-text-9 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-6 .u-container-layout-14 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-text-10 {
    margin-right: 18px;
  }

  .u-section-6 .u-group-13 {
    width: 500px;
  }

  .u-section-6 .u-container-layout-16 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-6 .u-text-12 {
    margin-right: 18px;
  }
}

@media (max-width: 575px) {
  .u-section-6 .u-dialog-1 {
    width: 800px;
  }

  .u-section-6 .u-container-layout-1 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-text-1 {
    margin-right: -74px;
  }

  .u-section-6 .u-container-layout-2 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-container-layout-3 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-6 .u-text-2 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-6 .u-container-layout-4 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-form-1 {
    width: 590px;
  }

  .u-section-6 .u-label-1 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-container-layout-5 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-6 .u-text-3 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-6 .u-group-4 {
    min-height: 105px;
  }

  .u-section-6 .u-container-layout-6 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-text-4 {
    margin-right: 158px;
  }

  .u-section-6 .u-group-5 {
    margin-top: -21px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-6 .u-group-6 {
    min-height: 105px;
    width: 680px;
  }

  .u-section-6 .u-container-layout-8 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-text-6 {
    margin-right: 158px;
  }

  .u-section-6 .u-group-7 {
    margin-top: -21px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-6 .u-container-layout-10 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-container-layout-11 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-6 .u-text-8 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-6 .u-container-layout-12 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-form-2 {
    width: 590px;
  }

  .u-section-6 .u-container-layout-13 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-6 .u-text-9 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-6 .u-container-layout-14 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-text-10 {
    margin-right: 158px;
  }

  .u-section-6 .u-group-12 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-6 .u-group-13 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-6 .u-container-layout-16 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-6 .u-text-12 {
    margin-right: 158px;
  }

  .u-section-6 .u-group-14 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }
}</style>
<!-- 3번 카테고리 modal -->
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-section-7" id="1page_section3">
      <div class="u-container-style u-dialog u-grey-10 u-radius-21 u-shape-round u-dialog-1" style="height:55vh">
        <div id="1page_sectionDiv_3"  class="u-container-layout u-valign-top u-container-layout-1">
        <!-- 삭제 구역    -->
                  <!-- 삭제 구역    -->
        </div><button class="u-dialog-close-button u-icon u-text-grey-40 u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8edf"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-8edf"><rect x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2" height="16"></rect><rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16" height="2"></rect></svg></button>
      </div>
    </section><style>/* .u-section-7 {
  min-height: 1760px;
} */

.u-section-7 .u-dialog-1 {
  width: 800px;
  min-height: 700px;
  margin: 89px auto 60px;
}

.u-section-7 .u-container-layout-1 {
  padding: 30px;
}

.u-section-7 .u-text-1 {
  font-family: NanumGothic;
  font-weight: 700;
  margin: 0 -74px 0 0;
}

.u-section-7 .u-tabs-1 {
  min-height: 662px;
  height: auto;
  width: 740px;
  margin: 15px 0 0;
}

.u-section-7 .u-tab-list-1 {
  background-image: none;
}

.u-section-7 .u-tab-link-1 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-tab-link-2 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-tab-link-3 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-tab-link-4 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-tab-pane-1 {
  background-image: none;
}

.u-section-7 .u-container-layout-2 {
  padding: 30px;
}

.u-section-7 .u-group-1 {
  min-height: 267px;
  margin-top: 0;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-3 {
  padding: 20px 15px;
}

.u-section-7 .u-text-2 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-7 .u-group-2 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-7 .u-container-layout-4 {
  padding: 20px 30px;
}

.u-section-7 .u-form-1 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-7 .u-form-group-1 {
  margin-left: 0;
}

.u-section-7 .u-input-1 {
  font-family: NanumGothic;
}

.u-section-7 .u-btn-1 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-group-3 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-5 {
  padding: 15px;
}

.u-section-7 .u-text-3 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-7 .u-icon-1 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-7 .u-group-4 {
  min-height: 105px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-6 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-4 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-5 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-7 .u-container-layout-7 {
  padding: 6px 10px;
}

.u-section-7 .u-text-5 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-group-6 {
  min-height: 105px;
  width: 680px;
  margin: 10px 0 0;
}

.u-section-7 .u-container-layout-8 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-6 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-7 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-7 .u-container-layout-9 {
  padding: 6px 10px;
}

.u-section-7 .u-text-7 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-tab-pane-2 {
  background-image: none;
}

.u-section-7 .u-container-layout-10 {
  padding: 30px;
}

.u-section-7 .u-group-8 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 267px;
}

.u-section-7 .u-container-layout-11 {
  padding: 20px 15px;
}

.u-section-7 .u-text-8 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-7 .u-group-9 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-7 .u-container-layout-12 {
  padding: 20px 30px;
}

.u-section-7 .u-form-2 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-7 .u-form-group-3 {
  margin-left: 0;
}

.u-section-7 .u-input-2 {
  font-family: NanumGothic;
}

.u-section-7 .u-btn-2 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-group-10 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-13 {
  padding: 15px;
}

.u-section-7 .u-text-9 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-7 .u-icon-2 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-7 .u-group-11 {
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-14 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-10 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-12 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-7 .u-container-layout-15 {
  padding: 6px 10px;
}

.u-section-7 .u-text-11 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-group-13 {
  min-height: 105px;
  width: 680px;
  margin: 10px 0 0;
}

.u-section-7 .u-container-layout-16 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-12 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-14 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-7 .u-container-layout-17 {
  padding: 6px 10px;
}

.u-section-7 .u-text-13 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-tab-pane-3 {
  background-image: none;
}

.u-section-7 .u-container-layout-18 {
  padding: 30px;
}

.u-section-7 .u-group-15 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 267px;
}

.u-section-7 .u-container-layout-19 {
  padding: 20px 15px;
}

.u-section-7 .u-text-14 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-7 .u-group-16 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-7 .u-container-layout-20 {
  padding: 20px 30px;
}

.u-section-7 .u-form-3 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-7 .u-form-group-5 {
  margin-left: 0;
}

.u-section-7 .u-label-3 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-input-3 {
  font-family: NanumGothic;
}

.u-section-7 .u-form-group-6 {
  margin-left: 0;
}

.u-section-7 .u-label-4 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-input-4 {
  font-family: NanumGothic;
}

.u-section-7 .u-btn-3 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-group-17 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-21 {
  padding: 15px;
}

.u-section-7 .u-text-15 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-7 .u-icon-3 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-7 .u-group-18 {
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-22 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-16 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-19 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-7 .u-container-layout-23 {
  padding: 6px 10px;
}

.u-section-7 .u-text-17 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-group-20 {
  min-height: 105px;
  width: 680px;
  margin: 10px 0 0;
}

.u-section-7 .u-container-layout-24 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-18 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-21 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-7 .u-container-layout-25 {
  padding: 6px 10px;
}

.u-section-7 .u-text-19 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-tab-pane-4 {
  background-image: none;
}

.u-section-7 .u-container-layout-26 {
  padding: 30px;
}

.u-section-7 .u-group-22 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 368px;
}

.u-section-7 .u-container-layout-27 {
  padding: 20px 15px;
}

.u-section-7 .u-text-20 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-7 .u-group-23 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-7 .u-container-layout-28 {
  padding: 20px 30px;
}

.u-section-7 .u-form-4 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-7 .u-form-group-8 {
  margin-left: 0;
}

.u-section-7 .u-label-5 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-input-5 {
  font-family: NanumGothic;
}

.u-section-7 .u-form-group-9 {
  margin-left: 0;
}

.u-section-7 .u-label-6 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-input-6 {
  font-family: NanumGothic;
}

.u-section-7 .u-form-group-10 {
  margin-left: 0;
}

.u-section-7 .u-label-7 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-input-7 {
  font-family: NanumGothic;
}

.u-section-7 .u-form-group-11 {
  margin-left: 0;
}

.u-section-7 .u-label-8 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-input-8 {
  font-family: NanumGothic;
}

.u-section-7 .u-btn-4 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-7 .u-group-24 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-29 {
  padding: 15px;
}

.u-section-7 .u-text-21 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-7 .u-icon-4 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-7 .u-group-25 {
  min-height: 155px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-30 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-22 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-26 {
  width: 109px;
  min-height: 46px;
  margin: -96px 0 0 auto;
}

.u-section-7 .u-container-layout-31 {
  padding: 6px 10px;
}

.u-section-7 .u-text-23 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-group-27 {
  min-height: 181px;
  margin-top: 10px;
  margin-bottom: 0;
}

.u-section-7 .u-container-layout-32 {
  padding: 30px 30px 25px;
}

.u-section-7 .u-text-24 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-7 .u-group-28 {
  width: 109px;
  min-height: 46px;
  margin: -121px 0 0 auto;
}

.u-section-7 .u-container-layout-33 {
  padding: 6px 10px;
}

.u-section-7 .u-text-25 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-7 .u-icon-5 {
  width: 20px;
  height: 20px;
}

@media (max-width: 1199px) {
  .u-section-7 .u-dialog-1 {
    height: auto;
  }
}

@media (max-width: 991px) {
  .u-section-7 .u-dialog-1 {
    width: 720px;
  }

  .u-section-7 .u-text-1 {
    margin-right: 0;
  }

  .u-section-7 .u-tabs-1 {
    width: 660px;
  }

  .u-section-7 .u-text-2 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-7 .u-form-1 {
    width: 510px;
  }

  .u-section-7 .u-text-3 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-7 .u-group-4 {
    min-height: 76px;
  }

  .u-section-7 .u-text-4 {
    margin-right: 78px;
  }

  .u-section-7 .u-group-5 {
    margin-top: -25px;
  }

  .u-section-7 .u-group-6 {
    min-height: 76px;
    width: 600px;
  }

  .u-section-7 .u-text-6 {
    margin-right: 78px;
  }

  .u-section-7 .u-group-7 {
    margin-top: -25px;
  }

  .u-section-7 .u-text-8 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-7 .u-form-2 {
    width: 510px;
  }

  .u-section-7 .u-text-9 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-7 .u-text-10 {
    margin-right: 78px;
  }

  .u-section-7 .u-group-12 {
    margin-top: -25px;
  }

  .u-section-7 .u-group-13 {
    min-height: 76px;
    width: 600px;
  }

  .u-section-7 .u-text-12 {
    margin-right: 78px;
  }

  .u-section-7 .u-group-14 {
    margin-top: -25px;
  }

  .u-section-7 .u-text-14 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-7 .u-form-3 {
    width: 510px;
  }

  .u-section-7 .u-text-15 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-7 .u-text-16 {
    margin-right: 78px;
  }

  .u-section-7 .u-group-19 {
    margin-top: -25px;
  }

  .u-section-7 .u-group-20 {
    min-height: 76px;
    width: 600px;
  }

  .u-section-7 .u-text-18 {
    margin-right: 78px;
  }

  .u-section-7 .u-group-21 {
    margin-top: -25px;
  }

  .u-section-7 .u-text-20 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-7 .u-form-4 {
    width: 510px;
  }

  .u-section-7 .u-text-21 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-7 .u-text-22 {
    margin-right: 78px;
  }

  .u-section-7 .u-text-24 {
    margin-right: 78px;
  }
}

@media (max-width: 767px) {
  .u-section-7 .u-dialog-1 {
    width: 540px;
  }

  .u-section-7 .u-container-layout-1 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-tabs-1 {
    width: 520px;
  }

  .u-section-7 .u-container-layout-2 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-3 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-4 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-form-1 {
    width: 460px;
  }

  .u-section-7 .u-container-layout-5 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-3 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-7 .u-container-layout-6 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-4 {
    margin-right: 18px;
  }

  .u-section-7 .u-group-5 {
    margin-top: -21px;
  }

  .u-section-7 .u-group-6 {
    width: 500px;
  }

  .u-section-7 .u-container-layout-8 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-6 {
    margin-right: 18px;
  }

  .u-section-7 .u-group-7 {
    margin-top: -21px;
  }

  .u-section-7 .u-container-layout-10 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-11 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-12 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-form-2 {
    width: 460px;
  }

  .u-section-7 .u-container-layout-13 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-9 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-7 .u-container-layout-14 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-10 {
    margin-right: 18px;
  }

  .u-section-7 .u-group-12 {
    margin-top: -21px;
  }

  .u-section-7 .u-group-13 {
    width: 500px;
  }

  .u-section-7 .u-container-layout-16 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-12 {
    margin-right: 18px;
  }

  .u-section-7 .u-group-14 {
    margin-top: -21px;
  }

  .u-section-7 .u-container-layout-18 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-19 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-20 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-form-3 {
    width: 460px;
  }

  .u-section-7 .u-container-layout-21 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-15 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-7 .u-container-layout-22 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-16 {
    margin-right: 18px;
  }

  .u-section-7 .u-group-19 {
    margin-top: -21px;
  }

  .u-section-7 .u-group-20 {
    width: 500px;
  }

  .u-section-7 .u-container-layout-24 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-18 {
    margin-right: 18px;
  }

  .u-section-7 .u-group-21 {
    margin-top: -21px;
  }

  .u-section-7 .u-container-layout-26 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-27 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-container-layout-28 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-form-4 {
    width: 460px;
  }

  .u-section-7 .u-container-layout-29 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-21 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-7 .u-group-25 {
    min-height: 179px;
  }

  .u-section-7 .u-container-layout-30 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-22 {
    width: auto;
    margin-right: 118px;
  }

  .u-section-7 .u-group-26 {
    margin-top: -121px;
  }

  .u-section-7 .u-container-layout-32 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-7 .u-text-24 {
    width: auto;
    margin-right: 113px;
  }
}

@media (max-width: 575px) {
  .u-section-7 .u-dialog-1 {
    width: 800px;
  }

  .u-section-7 .u-container-layout-1 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-1 {
    margin-right: -74px;
  }

  .u-section-7 .u-tabs-1 {
    width: 740px;
  }

  .u-section-7 .u-container-layout-2 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-container-layout-3 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-2 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-7 .u-container-layout-4 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-form-1 {
    width: 590px;
  }

  .u-section-7 .u-container-layout-5 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-3 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-7 .u-group-4 {
    min-height: 105px;
  }

  .u-section-7 .u-container-layout-6 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-4 {
    margin-right: 158px;
  }

  .u-section-7 .u-group-5 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-group-6 {
    min-height: 105px;
    width: 680px;
  }

  .u-section-7 .u-container-layout-8 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-6 {
    margin-right: 158px;
  }

  .u-section-7 .u-group-7 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-container-layout-10 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-container-layout-11 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-8 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-7 .u-container-layout-12 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-form-2 {
    width: 590px;
  }

  .u-section-7 .u-container-layout-13 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-9 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-7 .u-container-layout-14 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-10 {
    margin-right: 158px;
  }

  .u-section-7 .u-group-12 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-group-13 {
    min-height: 105px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-container-layout-16 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-12 {
    margin-right: 158px;
  }

  .u-section-7 .u-group-14 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-container-layout-18 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-container-layout-19 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-14 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-7 .u-container-layout-20 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-form-3 {
    width: 590px;
  }

  .u-section-7 .u-container-layout-21 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-15 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-7 .u-container-layout-22 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-16 {
    margin-right: 158px;
  }

  .u-section-7 .u-group-19 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-group-20 {
    min-height: 105px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-container-layout-24 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-18 {
    margin-right: 158px;
  }

  .u-section-7 .u-group-21 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-container-layout-26 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-container-layout-27 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-20 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-7 .u-container-layout-28 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-form-4 {
    width: 590px;
  }

  .u-section-7 .u-container-layout-29 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-7 .u-text-21 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-7 .u-group-25 {
    min-height: 155px;
  }

  .u-section-7 .u-container-layout-30 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-22 {
    margin-right: 158px;
    width: auto;
  }

  .u-section-7 .u-group-26 {
    margin-top: -96px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-7 .u-container-layout-32 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-7 .u-text-24 {
    margin-right: 158px;
    width: auto;
  }

  .u-section-7 .u-group-28 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }
}</style>
<!-- 4번 카테고리 modal  -->
<section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-section-8" id="1page_section4">
      <div class="u-container-style u-dialog u-grey-10 u-radius-21 u-shape-round u-dialog-1" style="height:55vh">
        <div id="1page_sectionDiv_4"  class="u-container-layout u-container-layout-1">
        <!-- 삭제 구역    -->
          <!-- 삭제 구역    -->
        </div><button class="u-dialog-close-button u-icon u-text-grey-40 u-icon-6"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-63bf"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-63bf"><rect x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2" height="16"></rect><rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16" height="2"></rect></svg></button>
      </div>
    </section><style>.u-section-8 {
  min-height: 1083px;
}

.u-section-8 .u-dialog-1 {
  width: 800px;
  min-height: 700px;
  margin: 84px auto 60px;
}

.u-section-8 .u-container-layout-1 {
  padding: 30px;
}

.u-section-8 .u-text-1 {
  font-family: NanumGothic;
  font-weight: 700;
  margin: 0 -74px 0 0;
}

.u-section-8 .u-tabs-1 {
  margin-top: 15px;
  min-height: 662px;
  height: auto;
  margin-bottom: 0;
  margin-left: 0;
}

.u-section-8 .u-tab-list-1 {
  background-image: none;
}

.u-section-8 .u-tab-link-1 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-tab-link-2 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-tab-link-3 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-tab-link-4 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-tab-link-5 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-tab-pane-1 {
  background-image: none;
}

.u-section-8 .u-container-layout-2 {
  padding: 30px;
}

.u-section-8 .u-group-1 {
  min-height: 368px;
  margin-top: 0;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-3 {
  padding: 20px 15px;
}

.u-section-8 .u-text-2 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-8 .u-group-2 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-8 .u-container-layout-4 {
  padding: 20px 30px;
}

.u-section-8 .u-form-1 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-8 .u-form-group-1 {
  margin-left: 0;
}

.u-section-8 .u-label-1 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-1 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-2 {
  margin-left: 0;
}

.u-section-8 .u-label-2 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-2 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-3 {
  margin-left: 0;
}

.u-section-8 .u-label-3 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-3 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-4 {
  margin-left: 0;
}

.u-section-8 .u-label-4 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-4 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-5 {
  margin-left: 0;
}

.u-section-8 .u-label-5 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-5 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-6 {
  margin-left: 0;
}

.u-section-8 .u-label-6 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-6 {
  font-family: NanumGothic;
}

.u-section-8 .u-btn-1 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-group-3 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-5 {
  padding: 15px;
}

.u-section-8 .u-text-3 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-8 .u-icon-1 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-8 .u-group-4 {
  min-height: 127px;
  margin-top: 9px;
  margin-bottom: 0;
  height: auto;
}

.u-section-8 .u-container-layout-6 {
  padding: 30px 30px 25px;
}

.u-section-8 .u-text-4 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-8 .u-group-5 {
  width: 109px;
  min-height: 46px;
  margin: -71px 0 0 auto;
}

.u-section-8 .u-container-layout-7 {
  padding: 6px 10px;
}

.u-section-8 .u-text-5 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-8 .u-tab-pane-2 {
  background-image: none;
}

.u-section-8 .u-container-layout-8 {
  padding: 30px;
}

.u-section-8 .u-group-6 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 267px;
}

.u-section-8 .u-container-layout-9 {
  padding: 20px 15px;
}

.u-section-8 .u-text-6 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-8 .u-group-7 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-8 .u-container-layout-10 {
  padding: 20px 30px;
}

.u-section-8 .u-form-2 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-8 .u-form-group-8 {
  margin-left: 0;
}

.u-section-8 .u-label-7 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-7 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-9 {
  margin-left: 0;
}

.u-section-8 .u-label-8 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-8 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-10 {
  margin-left: 0;
}

.u-section-8 .u-label-9 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-9 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-11 {
  margin-left: 0;
}

.u-section-8 .u-label-10 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-10 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-12 {
  margin-left: 0;
}

.u-section-8 .u-label-11 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-11 {
  font-family: NanumGothic;
}

.u-section-8 .u-btn-2 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-group-8 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-11 {
  padding: 15px;
}

.u-section-8 .u-text-7 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-8 .u-icon-2 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-8 .u-group-9 {
  margin-top: 9px;
  margin-bottom: 0;
  min-height: 133px;
  height: auto;
}

.u-section-8 .u-container-layout-12 {
  padding: 30px 30px 25px;
}

.u-section-8 .u-text-8 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-8 .u-group-10 {
  width: 109px;
  min-height: 46px;
  margin: -71px 0 0 auto;
}

.u-section-8 .u-container-layout-13 {
  padding: 6px 10px;
}

.u-section-8 .u-text-9 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-8 .u-tab-pane-3 {
  background-image: none;
}

.u-section-8 .u-container-layout-14 {
  padding: 30px;
}

.u-section-8 .u-group-11 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 267px;
}

.u-section-8 .u-container-layout-15 {
  padding: 20px 15px;
}

.u-section-8 .u-text-10 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-8 .u-group-12 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-8 .u-container-layout-16 {
  padding: 20px 30px;
}

.u-section-8 .u-form-3 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-8 .u-form-group-14 {
  margin-left: 0;
}

.u-section-8 .u-label-12 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-12 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-15 {
  margin-left: 0;
}

.u-section-8 .u-label-13 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-13 {
  font-family: NanumGothic;
}

.u-section-8 .u-btn-3 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-group-13 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-17 {
  padding: 15px;
}

.u-section-8 .u-text-11 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-8 .u-icon-3 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-8 .u-group-14 {
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-18 {
  padding: 30px 30px 25px;
}

.u-section-8 .u-text-12 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-8 .u-group-15 {
  width: 109px;
  min-height: 46px;
  margin: -21px 0 0 auto;
}

.u-section-8 .u-container-layout-19 {
  padding: 6px 10px;
}

.u-section-8 .u-text-13 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-8 .u-tab-pane-4 {
  background-image: none;
}

.u-section-8 .u-container-layout-20 {
  padding: 30px;
}

.u-section-8 .u-group-16 {
  margin-top: 0;
  margin-bottom: 0;
  min-height: 368px;
}

.u-section-8 .u-container-layout-21 {
  padding: 20px 15px;
}

.u-section-8 .u-text-14 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-8 .u-group-17 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-8 .u-container-layout-22 {
  padding: 20px 30px;
}

.u-section-8 .u-form-4 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-8 .u-form-group-17 {
  margin-left: 0;
}

.u-section-8 .u-label-14 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-14 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-18 {
  margin-left: 0;
}

.u-section-8 .u-label-15 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-15 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-19 {
  margin-left: 0;
}

.u-section-8 .u-label-16 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-16 {
  font-family: NanumGothic;
}

.u-section-8 .u-btn-4 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-group-18 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-23 {
  padding: 15px;
}

.u-section-8 .u-text-15 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-8 .u-icon-4 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-8 .u-group-19 {
  min-height: 101px;
  margin-top: 9px;
  margin-bottom: 0;
  height: auto;
}

.u-section-8 .u-container-layout-24 {
  padding: 30px 30px 25px;
}

.u-section-8 .u-text-16 {
  font-family: NanumGothic;
  font-weight: 700;
  font-size: 1rem;
  margin: 0 158px 0 0;
}

.u-section-8 .u-group-20 {
  width: 109px;
  min-height: 46px;
  margin: -46px 0 0 auto;
}

.u-section-8 .u-container-layout-25 {
  padding: 6px 10px;
}

.u-section-8 .u-text-17 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-8 .u-tab-pane-5 {
  background-image: none;
}

.u-section-8 .u-container-layout-26 {
  padding: 30px;
}

.u-section-8 .u-group-21 {
  min-height: 368px;
  margin-top: 0;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-27 {
  padding: 20px 15px;
}

.u-section-8 .u-text-18 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: -1px -63px 0 33px;
}

.u-section-8 .u-group-22 {
  margin-top: 15px;
  margin-bottom: 0;
  min-height: 166px;
}

.u-section-8 .u-container-layout-28 {
  padding: 20px 30px;
}

.u-section-8 .u-form-5 {
  height: 199px;
  width: 590px;
  margin: 0;
}

.u-section-8 .u-form-group-21 {
  margin-left: 0;
}

.u-section-8 .u-label-17 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-17 {
  font-family: NanumGothic;
}

.u-section-8 .u-form-group-22 {
  margin-left: 0;
}

.u-section-8 .u-label-18 {
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-input-18 {
  font-family: NanumGothic;
}

.u-section-8 .u-btn-5 {
  background-image: none;
  border-style: none;
  font-family: NanumGothic;
  font-weight: 700;
}

.u-section-8 .u-group-23 {
  min-height: 55px;
  margin-top: 9px;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-29 {
  padding: 15px;
}

.u-section-8 .u-text-19 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  margin: 0 127px 0 258px;
}

.u-section-8 .u-icon-5 {
  height: 20px;
  width: 20px;
  margin: -24px auto 0 229px;
}

.u-section-8 .u-group-24 {
  min-height: 101px;
  margin-top: 9px;
  height: auto;
  margin-bottom: 0;
}

.u-section-8 .u-container-layout-30 {
  padding: 30px 30px 25px;
}

.u-section-8 .u-text-20 {
  font-family: NanumGothic;
  font-size: 1rem;
  font-weight: 700;
  background-image: none;
  margin: 0 158px 0 0;
}

.u-section-8 .u-group-25 {
  width: 109px;
  min-height: 46px;
  margin: -46px 0 0 auto;
}

.u-section-8 .u-container-layout-31 {
  padding: 6px 10px;
}

.u-section-8 .u-text-21 {
  font-family: NanumGothic;
  font-weight: 800;
  font-size: 1rem;
  width: 51px;
  margin: 0 auto;
}

.u-section-8 .u-icon-6 {
  width: 20px;
  height: 20px;
}

@media (max-width: 1199px) {
  .u-section-8 .u-tabs-1 {
    margin-left: initial;
  }

  .u-section-8 .u-group-4 {
    min-height: 127px;
  }

  .u-section-8 .u-group-9 {
    min-height: 133px;
  }

  .u-section-8 .u-group-10 {
    margin-top: -71px;
  }

  .u-section-8 .u-group-19 {
    min-height: 101px;
  }

  .u-section-8 .u-group-24 {
    min-height: 101px;
  }
}

@media (max-width: 991px) {
  .u-section-8 .u-dialog-1 {
    width: 720px;
  }

  .u-section-8 .u-text-1 {
    margin-right: 0;
  }

  .u-section-8 .u-text-2 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-8 .u-form-1 {
    width: 510px;
  }

  .u-section-8 .u-text-3 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-8 .u-text-4 {
    margin-right: 78px;
  }

  .u-section-8 .u-text-6 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-8 .u-form-2 {
    width: 510px;
  }

  .u-section-8 .u-text-7 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-8 .u-text-8 {
    margin-right: 78px;
  }

  .u-section-8 .u-text-10 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-8 .u-form-3 {
    width: 510px;
  }

  .u-section-8 .u-text-11 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-8 .u-text-12 {
    margin-right: 78px;
  }

  .u-section-8 .u-text-14 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-8 .u-form-4 {
    width: 510px;
  }

  .u-section-8 .u-text-15 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-8 .u-text-16 {
    margin-right: 78px;
  }

  .u-section-8 .u-text-18 {
    margin-left: 0;
    margin-right: 0;
  }

  .u-section-8 .u-form-5 {
    width: 510px;
  }

  .u-section-8 .u-text-19 {
    margin-right: 87px;
    margin-left: 218px;
  }

  .u-section-8 .u-group-24 {
    min-height: 80px;
  }

  .u-section-8 .u-text-20 {
    margin-right: 78px;
  }

  .u-section-8 .u-group-25 {
    margin-top: -50px;
  }
}

@media (max-width: 767px) {
  .u-section-8 .u-dialog-1 {
    width: 540px;
  }

  .u-section-8 .u-container-layout-1 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-2 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-3 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-4 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-form-1 {
    width: 460px;
  }

  .u-section-8 .u-container-layout-5 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-3 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-8 .u-container-layout-6 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-4 {
    margin-right: 18px;
  }

  .u-section-8 .u-container-layout-8 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-9 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-10 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-form-2 {
    width: 460px;
  }

  .u-section-8 .u-container-layout-11 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-7 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-8 .u-container-layout-12 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-8 {
    margin-right: 18px;
  }

  .u-section-8 .u-container-layout-14 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-15 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-16 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-form-3 {
    width: 460px;
  }

  .u-section-8 .u-container-layout-17 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-11 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-8 .u-container-layout-18 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-12 {
    margin-right: 18px;
  }

  .u-section-8 .u-container-layout-20 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-21 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-22 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-form-4 {
    width: 460px;
  }

  .u-section-8 .u-container-layout-23 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-15 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-8 .u-container-layout-24 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-16 {
    margin-right: 18px;
  }

  .u-section-8 .u-container-layout-26 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-27 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-container-layout-28 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-form-5 {
    width: 460px;
  }

  .u-section-8 .u-container-layout-29 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-19 {
    margin-right: 42px;
    margin-left: 173px;
  }

  .u-section-8 .u-group-24 {
    min-height: 80px;
  }

  .u-section-8 .u-container-layout-30 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-section-8 .u-text-20 {
    margin-right: 18px;
  }

  .u-section-8 .u-group-25 {
    margin-top: -46px;
  }
}

@media (max-width: 575px) {
  .u-section-8 .u-dialog-1 {
    width: 800px;
  }

  .u-section-8 .u-container-layout-1 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-text-1 {
    margin-right: -74px;
  }

  .u-section-8 .u-container-layout-2 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-container-layout-3 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-2 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-8 .u-container-layout-4 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-form-1 {
    width: 590px;
  }

  .u-section-8 .u-container-layout-5 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-3 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-8 .u-group-4 {
    min-height: 127px;
  }

  .u-section-8 .u-container-layout-6 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-text-4 {
    margin-right: 158px;
  }

  .u-section-8 .u-group-5 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-8 .u-container-layout-8 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-container-layout-9 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-6 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-8 .u-container-layout-10 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-form-2 {
    width: 590px;
  }

  .u-section-8 .u-container-layout-11 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-7 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-8 .u-group-9 {
    min-height: 133px;
  }

  .u-section-8 .u-container-layout-12 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-text-8 {
    margin-right: 158px;
  }

  .u-section-8 .u-group-10 {
    margin-top: -71px;
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-8 .u-container-layout-14 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-container-layout-15 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-10 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-8 .u-container-layout-16 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-form-3 {
    width: 590px;
  }

  .u-section-8 .u-container-layout-17 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-11 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-8 .u-container-layout-18 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-text-12 {
    margin-right: 158px;
  }

  .u-section-8 .u-group-15 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-8 .u-container-layout-20 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-container-layout-21 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-14 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-8 .u-container-layout-22 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-form-4 {
    width: 590px;
  }

  .u-section-8 .u-container-layout-23 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-15 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-8 .u-group-19 {
    min-height: 101px;
  }

  .u-section-8 .u-container-layout-24 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-text-16 {
    margin-right: 158px;
  }

  .u-section-8 .u-group-20 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }

  .u-section-8 .u-container-layout-26 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-container-layout-27 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-18 {
    margin-right: -63px;
    margin-left: 33px;
  }

  .u-section-8 .u-container-layout-28 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-form-5 {
    width: 590px;
  }

  .u-section-8 .u-container-layout-29 {
    padding-left: 15px;
    padding-right: 15px;
  }

  .u-section-8 .u-text-19 {
    margin-right: 127px;
    margin-left: 258px;
  }

  .u-section-8 .u-group-24 {
    min-height: 101px;
  }

  .u-section-8 .u-container-layout-30 {
    padding-left: 30px;
    padding-right: 30px;
  }

  .u-section-8 .u-text-20 {
    margin-right: 158px;
  }

  .u-section-8 .u-group-25 {
    margin-right: initial;
    margin-left: initial;
    width: auto;
  }
}</style>

 <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/textData.js?ver=13"></script>

</body>
</html>
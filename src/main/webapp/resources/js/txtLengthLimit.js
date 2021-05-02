function acText(content,parent){
	if(content.length > 6){
		var shortContent = content.substring(0,5);
	  	$("#itemBox_"+parent).children(":last").append("<div  class='contentName'><p>"+shortContent+" ...</p><span class='toolTip'>"+content+"</span></div>"); 
	}else{
		$("#itemBox_"+parent).children(":last").append('<div><p>'+content+'</p></div>'); 
	}
}

function apText(content,parent){
	if(content.length > 12){
		var shortContent = content.substring(0,11);
	  	$("#itemBox_"+parent).children(":last").children(":last").append("<div class='contentName'><p>"+shortContent+" ...</p><span class='toolTip'>"+content+"</span></div>");
	}else{
		$("#itemBox_"+parent).children(":last").children(":last").append('<div><p>'+content+'</p></div>');
	}
}
function apText2(content,parent){
	if(content.length > 12){
		var shortContent = content.substring(0,11);
	  	$("#itemBox_"+parent).children(":last").append("<div class='contentName'><p>"+shortContent+" ...</p><span class='toolTip'>"+content+"</span></div>");
	}else{
		$("#itemBox_"+parent).children(":last").append('<div><p>'+content+'</p></div>');
	}
}

function projectText(content,parent,link){
	if(content.length > 12){
		var shortContent = content.substring(0,11);
	  	$("#itemBox_"+parent).children(":last").children(":last").append('<div class="contentName"><p>'+shortContent+' ...<span><a href="'+link+'"><img class="urlIcon" src="'+currentPath+'/resources/images/phone2.png" alt="default_img"></a></span></p><span class="toolTip">'+content+'</span></div>');
	}else{
		$("#itemBox_"+parent).children(":last").children(":last").append('<div><p>'+content+'<span><a href="'+link+'"><img class="urlIcon" src="'+currentPath+'/resources/images/phone2.png" alt="default_img"></a></span></p></div>');
	}
}

function projectText2(content,parent,link){
	if(content.length > 12){
		var shortContent = content.substring(0,11);
	  	$("#itemBox_"+parent).children(":last").append('<div class="contentName"><p>'+shortContent+' ...<span><a href="'+link+'"><img class="urlIcon" src="'+currentPath+'/resources/images/phone2.png" alt="default_img"></a></span></p><span class="toolTip">'+content+'</span></div>');
	}else{
		$("#itemBox_"+parent).children(":last").append('<div><p>'+content+'<span><a href="'+link+'"><img class="urlIcon" src="'+currentPath+'/resources/images/phone2.png" alt="default_img"></a></span></p></div>');
	}
}
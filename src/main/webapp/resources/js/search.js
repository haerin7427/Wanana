$(document).on('click', ".searchB", function(){
		var value=$("#keyword").val();
		var job;
		$("#jobDetailBody").empty();
	 	for(var j=0; j<jobList.length;j++){
	 		job=jobList[j].jobNm;
			if(job.match(value)){//검색어가 포함된다면
				var jobRightTr=$('<div class="u-align-center u-container-style u-list-item u-repeater-item u-list-item-1 jobName" id="'+jobList[j].jobCd+'"><div class="u-container-layout u-similar-container u-valign-middle u-container-layout-1"><h4 class="u-text u-text-default u-text-2" stlye="margin: 0 auto;">'+jobList[j].jobNm+'</h4></div></div>');
			 	$("#jobDetailBody").append(jobRightTr);
			 }
	 	}
	 	var count=$("#jobDetailBody > div").length;
	 	$("#countJob").text(count);
});
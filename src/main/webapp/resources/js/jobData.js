
$( document ).ready(function() {
	var jobList;
	var jobs = new List();
    $.ajax({
			url: "job/jobList",
		 	type:'GET',
		   	traditional : true,
		   	dataType : 'json',
		   	async: false,
		  	success:function(result){
		    	jobList=result;
		    	for(var j=0; j<jobList.length;j++){
		    		//var input=jobList[j].jobClcd.replace(" ","");
		    		//var jbSplit = jobList[j].jobClcd.split(',');
		    		
		    	
			    	if(jobs.contains(jobList[j].jobClcdNM)==false){
			    		var jobTr=$('<div id="'+jobList[j].jobClcdNM+'" class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-1 jobPick"> <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-3" ><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"></span><h6 class="u-text u-text-2" style="text-align:center;">'+jobList[j].jobClcdNM+'</h6></div></div');
			 			//var jobTr=$('<tr style="height: 60px;"><td class="u-table-cell u-white u-table-cell" id="'+jobList[j].jobClcdNM+'">'+jobList[j].jobClcdNM+'</td></tr>');
			 			$("#jobListBody").append(jobTr);
			 			jobs.append(jobList[j].jobClcdNM);
			 		}
	 			}
		   	},
		   	error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
		
	//직업 분류 중 하나를 눌렀을 때(td 눌렀을 때)
	$("#jobListBody .jobPick").click(function(){     //function_td 
		$("#jobDetailBody").empty();
		var jobBigName=$(this).attr('id');
	
	 	for(var j=0; j<jobList.length;j++){
	 	
			if(jobList[j].jobClcdNM==jobBigName){
				var jobRightTr=$('<div class="u-align-center u-container-style u-list-item u-repeater-item u-list-item-1 jobName" id="'+jobList[j].jobCd+'"><div class="u-container-layout u-similar-container u-valign-middle u-container-layout-1"><h4 class="u-text u-text-default u-text-2" stlye="margin: 0 auto;">'+jobList[j].jobNm+'</h4></div></div>');
			 	$("#jobDetailBody").append(jobRightTr);
			 	
			 }
	 	}
	 	var count=$("#jobDetailBody > div").length;
	 	$("#countJob").text(count);
	}); 
	
});


$(document).on('click', ".jobName", function(){
		var jobCode=$(this).attr("id");
		$("#selectJobCode").val(jobCode);
		var randomString = Math.random().toString(36).slice(2);
        var openTap = window.open('job/jobDetail/'+jobCode,randomString);
        var formTap = document.myform;
        formTap.target=randomString;
        formTap.submit();
        console.log(jobCode);
        $("#jobForm").attr("action","job/jobDetail/"+jobCode);
        $("#jobForm").submit();
});
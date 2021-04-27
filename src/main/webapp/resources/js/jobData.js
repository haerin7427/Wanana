
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
			 			var jobTr=$('<tr style="height: 60px;"><td class="u-table-cell u-white u-table-cell" id="'+jobList[j].jobClcdNM+'">'+jobList[j].jobClcdNM+'</td></tr>');
			 			$("#jobListTBody").append(jobTr);
			 			jobs.append(jobList[j].jobClcdNM);
			 		}
	 			}
		   	},
		   	error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
		
	//직업 분류 중 하나를 눌렀을 때(td 눌렀을 때)
	$("#jobListTBody td").click(function(){     //function_td 
		var jobBigName=$(this).id;
	 	for(var j=0; j<jobList.length;j++){
			if(jobList[j].jobClcdNM.equals(jobBigName)){
				var jobRightTr=$('<tr style="height: 60px;"><td class="u-table-cell u-white u-table-cell" id="'+jobList[j].jobClcdNM+'">'+jobList[j].jobClcdNM+'</td></tr>');
			 	$("#jobDetailTBody").append(jobRightTr);
			 	
			 }
	 	}
	}); 
	
});
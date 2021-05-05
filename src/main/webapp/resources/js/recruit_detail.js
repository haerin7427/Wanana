$( document ).ready(function() {
	var summary;
	var jobCode=$("#jobCode").val();
    $.ajax({
			url: "../jobDetail/"+jobCode+"/one",
		 	type:'GET',
		   	traditional : true,
		   	dataType : 'json',
		   	async: false,
		  	success:function(result){
		    	summary=result;
		    
		    	$(".jobName").text(summary.jobSmclNm);
		    	$(".jobContent").text(summary.jobSum);
		    	$(".way").text(summary.way);
		    	$(".jobStatus").text(summary.jobStatus);
		    	
		    	if(summary.relMajorList!=null){
			    	for(var i=0; i<summary.relMajorList.length; i++){
			    		$(".majorList").append(summary.relMajorList[i].majorNm+"<br>");
			    	}
			    }
		    	
		    	if(summary.relCertList!=null){
			    	for(var i=0; i<summary.relCertList.length; i++){
			    		$(".certList").append(summary.relCertList[i].certNm+"<br>");
			    	}
		    	}
		    	
		    	if(summary.sal!=null){
			    	var txt=summary.sal;
			    	var jbSplit = txt.split(',');
			    	for(var i=1; i<jbSplit.length; i++){
			    		var input=jbSplit[i].replace("임금","");
			    		$(".sal").append(input+"<br>");
			    		
			    	}
			    }
		    	
		    	$(".satis").text(summary.jobSatis);
		    	
		    	if(summary.jobProspect!=null){
			    	var jbSplit = summary.jobProspect.split(' ');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".prospect").append(jbSplit[i]+"<br>");
			    	}
		    	}
		    	
		    	if(summary.jobAbil!=null){
			    	jbSplit = summary.jobAbil.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".jobAbil").append(jbSplit[i]+"<br>");
			    	}
			    }
			    
			    if(summary.knowldg!=null){
			    	jbSplit = summary.knowldg.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".knowldg").append(jbSplit[i]+"<br>");
			    	}
			    }
			    
			    if(summary.jobEnv!=null){
			    	jbSplit = summary.jobEnv.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".jobEnv").append(jbSplit[i]+"<br>");
			    	}
			    }
		    	
		    	if(summary.jobChr!=null){
			    	jbSplit = summary.jobChr.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".jobChr").append(jbSplit[i]+"<br>");
			    	}
			    }
			    if(summary.jobIntrst!=null){
			    	jbSplit = summary.jobIntrst.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".jobIntrst").append(jbSplit[i]+"<br>");
			    	}
			    }
			    if(summary.jobVals!=null){
			    	jbSplit = summary.jobVals.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".jobVals").append(jbSplit[i]+"<br>");
			    	}
			    }
		    	
		    	if(summary.jobActvImprtncs!=null){
			    	jbSplit = summary.jobActvImprtncs.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".jobActvImprtncs").append(jbSplit[i]+"<br>");
			    	}
			    }
			    if(summary.jobActvLvls!=null){
			    	jbSplit = summary.jobActvLvls.split('/');
			    	for(var i=0; i<jbSplit.length; i++){
			    		$(".jobActvLvls").append(jbSplit[i]+"<br>");
			    	}
			    }
		    	
		    	if(summary.relJobList!=null){
			    	for(var i=0; i<summary.relJobList.length; i++){
			    		$(".jobList").append(summary.relJobList[i].jobNm+"&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;");
			    	}
		    	}
		   	},
		   	error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
		$('ul .tab2').click(function(){
            var two;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/two",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	two=result;
			    	console.log(result);
			    	$(".two_jobSum").text(two.jobSum);
			    	
			    	if(two.execJob!=null){
				    	var jbSplit = two.execJob.split('-');
				    	for(var i=1; i<jbSplit.length; i++){
				    		$(".two_execJob").append(jbSplit[i]+"<br>");
				    	}
		    		}
			    	
			    	if(two.jobVideo==null){
			    		$(".two_jobVideoBox").css("display","none");
			    	}
			    	else{
			    		$(".two_jobVideo iframe").attr("src",two.jobVideo);
			    	}
			    	
			    	if(two.relJobList!=null){
				    	for(var i=0; i<two.relJobList.length; i++){
				    		$(".two_jobList").append(two.relJobList[i].jobNm+"<br>");
				    	}
		    		}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        $('ul .tab2').click(function(){
            var two;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/two",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	two=result;
			    	console.log(result);
			    	$(".two_jobSum").text(two.jobSum);
			    	
			    	$(".two_execJob").empty();
			    	if(two.execJob!=null){
				    	var jbSplit = two.execJob.split('-');
				    	for(var i=1; i<jbSplit.length; i++){
				    		$(".two_execJob").append(jbSplit[i]+"<br>");
				    	}
		    		}
		    		
			    	if(two.jobVideo==null){
			    		$(".two_jobVideoBox").css("display","none");
			    	}
			    	else{
			    		$(".two_jobVideo iframe").attr("src",two.jobVideo);
			    	}
			    	
			    	$(".two_jobList").empty();
			    	if(two.relJobList!=null){
				    	for(var i=0; i<two.relJobList.length; i++){
				    		$(".two_jobList").append(two.relJobList[i].jobNm+"<br>");
				    	}
		    		}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        
        $('ul .tab2').click(function(){
            var two;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/two",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	two=result;
			    	$(".two_jobSum").text(two.jobSum);
			    	
			    	$(".two_execJob").empty();
			    	if(two.execJob!=null){
				    	var jbSplit = two.execJob.split('-');
				    	for(var i=1; i<jbSplit.length; i++){
				    		$(".two_execJob").append(jbSplit[i]+"<br>");
				    	}
		    		}
			    	
			    	if(two.jobVideo==null){
			    		$(".two_jobVideoBox").css("display","none");
			    	}
			    	else{
			    		$(".two_jobVideo iframe").attr("src",two.jobVideo);
			    	}
			    	
			    	$(".two_jobList").empty();
			    	if(two.relJobList!=null){
				    	for(var i=0; i<two.relJobList.length; i++){
				    		$(".two_jobList").append(two.relJobList[i].jobNm+"<br>");
				    	}
		    		}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        
        
        $('ul .tab3').click(function(){
            var three;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/three",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	three=result;
			    	console.log(result);
			    	$(".three_technKnow").text(three.technKnow);
			    	
			    	
			    	$(".three_relOrg").empty();
			    	if(three.relOrgList!=null){
				    	for(var i=0; i<three.relOrgList.length; i++){
				    		$(".three_relOrg").append(three.relOrgList[i].orgNm+"&ensp;&ensp;&ensp;-&ensp;&ensp;&ensp;"+three.relOrgList[i].orgSiteUrl+"<br>");
				    	}
		    		}
		    		else{
		    			$(".three_org").css("display","none");
		    			$(".orgBox").css("display","none");
		    		}
		    		
		    		$(".three_majorList").empty();
		    		if(three.relMajorList!=null){
				    	for(var i=0; i<three.relMajorList.length; i++){
				    		$(".three_majorList").append(three.relMajorList[i].majorNm+"<br>");
				    	}
			    	}
			    	else
		    			$(".three_major").css("display","none");
		    	
		    		$(".three_certList").empty();
			    	if(three.relCertList!=null){
				    	for(var i=0; i<three.relCertList.length; i++){
				    		$(".three_certList").append(three.relCertList[i].certNm+"<br>");
				    	}
			    	}
			    	else
		    			$(".three_cert").css("display","none");
			    	
			    	$(".edubg").empty();
			    	if(three.edubg!=null){
				    	
				    	//차트그리기(학력분포)
				    	google.load("visualization", "1", {packages:["corechart"]}); 
				    	google.setOnLoadCallback(drawChart); 
				    	function drawChart() { 
				    		var data = google.visualization.arrayToDataTable( 
				    			[["학력","Rating"],
				    			["중졸이하",three.edubg[0].edubgMgraduUndr],
				    			["고졸",three.edubg[0].edubgHgradu],
				    			["전문대졸",three.edubg[0].edubgCgraduUndr],
				    			["대졸",three.edubg[0].edubgUgradu],
				    			["대학원졸",three.edubg[0].edubgGgradu],
				    			["박사졸",three.edubg[0].edubgDgradu]] 
				    		); 
				    		var options = { title: "학력 분포" }; 
				    		var chart = new google.visualization.PieChart(document.getElementById("edubg")); 
				    		chart.draw(data, options); 
				    	}
					}
					
					$(".schDpt").empty();
			    	if(three.schDpt!=null){
				    	
				    	//차트그리기(전공학과분포)
				    	google.load("visualization", "1", {packages:["corechart"]}); 
				    	google.setOnLoadCallback(drawChart); 
				    	function drawChart() { 
				    		var data = google.visualization.arrayToDataTable( 
				    			[["전공학과","Rating"],
				    			["인문계열",three.schDpt[0].cultLangDpt],
				    			["사회계열",three.schDpt[0].socDpt],
				    			["교육계열",three.schDpt[0].eduDpt],
				    			["공학계열",three.schDpt[0].engnrDpt],
				    			["자연계열",three.schDpt[0].natrlDpt],
				    			["예체능계열",three.schDpt[0].artphyDpt],
				    			["의학계열",three.schDpt[0].mediDpt]]
				    		); 
				    		var options = { title: "전공학과 분포" }; 
				    		var chart = new google.visualization.PieChart(document.getElementById("schDpt")); 
				    		chart.draw(data, options); 
				    	}
					}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        
        $('ul .tab4').click(function(){
            var four;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/four",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	four=result;
			    	console.log(result);
			    	$(".four_sal").text(four.sal);
			    	$(".four_jobSatis").text(four.jobSatis);
			    	$(".four_jobProspect").text(four.jobProspect);
			    	
			    	$(".four_jobSumProspect").empty();
			    	if(four.jobSumProspect!=null){
				    	//차트그리기(일자리 전망)
				    	google.load("visualization", "1", {packages:["corechart"]}); 
				    	google.setOnLoadCallback(drawChart); 
				    	function drawChart() { 
				    		var data = new google.visualization.DataTable();
				    		data.addColumn("string", "일자리전망");
				    		data.addColumn("number","Rating");
				    		for (var i = 0; i < four.jobSumProspect.length; i++) {
				    			
			                    data.addRow([four.jobSumProspect[i].jobProspectNm, Number(four.jobSumProspect[i].jobProspectRatio)]);
			                }
				    		var options = { title: "일자리 전망" }; 
				    		var chart = new google.visualization.PieChart(document.getElementById("jobSumProspect")); 
				    		chart.draw(data, options); 
				    	}
					}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
});


		
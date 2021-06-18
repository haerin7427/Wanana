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
		    	console.log(summary);
		    	$(".jobName").text(summary.jobSmclNm);
		    	$(".jobContent").text(summary.jobSum);
		    	var path=getContextPath()+"/resources/images/job/";
		    	$("#jobImg").attr("src",path+summary.jobMdclNm+".png");
		    	
		    	$(".way").empty();
			    	var jbSplit = summary.way.split('.');
			    	for(var i=0; i<jbSplit.length-1; i++){
				    	$(".way").append(jbSplit[i]+".<br>");
				    }
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
			    	
			    	$(".three_technKnow").empty();
			    	var jbSplit = three.technKnow.split('.');
			    	for(var i=0; i<jbSplit.length-1; i++){
				    	$(".three_technKnow").append(jbSplit[i]+".<br>");
				    }
			    	
			    	var input;
			    	$(".three_relOrg").empty();
			    	if(three.relOrgList!=null){
				    	for(var i=0; i<three.relOrgList.length; i++){
				    		input=$("<p style='margin:0;'>"+three.relOrgList[i].orgNm+"&ensp;&ensp;&ensp;-&ensp;&ensp;&ensp;<a href='"+three.relOrgList[i].orgSiteUrl+"'>"+three.relOrgList[i].orgSiteUrl+"</a></p><br>");
				    		$(".three_relOrg").append(input);
				    	}
		    		}
		    		else{
		    			$("#three_org").css("display","none");
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
				    	google.charts.load('current', {packages: ['corechart']});
  						google.charts.setOnLoadCallback(drawChart1);
				    	function drawChart1() { 
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
					else
						$(".edubg").parent().css("display","none");
					
					
					$(".schDpt").empty();
			    	if(three.schDpt!=null){
				    	
				    	//차트그리기(전공학과분포)
				    	google.charts.load('current', {packages: ['corechart']});
  						google.charts.setOnLoadCallback(drawChart2);
				    	function drawChart2() { 
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
					else
						$(".schDpt").parent().css("display","none");
						
			    	
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
			    	
			    	$(".four_sal").text(four.sal);
			    	$(".four_jobSatis").text(four.jobSatis);
			    	
			    	$(".four_jobProspect").empty();
			    	var jbSplit =four.jobProspect.split('.');
			    	for(var i=0; i<jbSplit.length-1; i++){
				    	$(".four_jobProspect").append(jbSplit[i]+".<br>");
				    }
				    
			    	var len;
			    	$(".four_jobSumProspect").empty();
			    	$(".schDpt").empty();
			    	$(".edubg").empty();
			    	if(four.jobSumProspect!=null){
				    	//차트그리기(일자리 전망)
				    	google.charts.load('current', {packages: ['corechart']});
  						google.charts.setOnLoadCallback(drawChart3);
				    	var jobSum=four.jobSumProspect;
				    	len=jobSum.length;
				    	function drawChart3() { 
				    		var data3 = new google.visualization.DataTable();
				    		data3.addColumn("string", "일자리전망");
				    		data3.addColumn("number","Rating");
				    		for (var i = 0; i < len; i++) {
			                    data3.addRow([jobSum[i].jobProspectNm, Number(jobSum[i].jobProspectRatio)]);
			                }
				    		var options = { title: "일자리 전망" }; 
				    		var chart = new google.visualization.PieChart(document.getElementById("jobSumProspect")); 
				    		chart.draw(data3, options); 
				    	}
				    	
					}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        
         $('ul .tab5').click(function(){
            var five;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/five",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	five=result;
			    	var tr;
			    	console.log(five);
			    	$(".five_accordi1").empty();
			    	if(five.jobAbil!=null){
				    	for(var i=0; i<five.jobAbil.length; i++){
				    		tr='<tr style="height: 75px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-58">'+five.jobAbil[i].jobAblNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+five.jobAbil[i].jobAblStatus+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+five.jobAbil[i].jobAblCont+'</td></tr>';
				    		$(".five_accordi1").append(tr);
				    	}
		    		}
			    	
			    	$("#five_accordi2").empty();
			    	if(five.knwldg!=null){
				    	for(var i=0; i<five.knwldg.length; i++){
				    		tr=$('<tr style="height: 75px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-73">'+five.knwldg[i].knwldgNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+five.knwldg[i].knwldgStatus+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+five.knwldg[i].knwldgCont+'</td></tr>');
				    		$("#five_accordi2").append(tr);
				    	}
		    		}
		    		
		    		$(".five_accordi3").empty();
			    	if(five.jobEnv!=null){
				    	for(var i=0; i<five.jobEnv.length; i++){
				    		tr='<tr style="height: 75px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-88">'+five.jobEnv[i].jobEnvNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+five.jobEnv[i].jobEnvStatus+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+five.jobEnv[i].jobEnvCont+'</td></tr>';
				    		$(".five_accordi3").append(tr);
				    	}
		    		}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        
        $('ul .tab6').click(function(){
            var six;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/six",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	six=result;
			    	var tr;
			    	
			    	$(".six_accordi1").empty();
			    	if(six.jobChr!=null){
				    	for(var i=0; i<six.jobChr.length; i++){
				    		tr='<tr style="height: 71px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-103">'+six.jobChr[i].jobChrNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+six.jobChr[i].jobChrStatus+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+six.jobChr[i].jobChrCont+'</td></tr>';
				    		$(".six_accordi1").append(tr);
				    	}
		    		}
			    	
			    	$(".six_accordi2").empty();
			    	if(six.jobIntrst!=null){
				    	for(var i=0; i<six.jobIntrst.length; i++){
				    		tr='<tr style="height: 71px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-103">'+six.jobIntrst[i].intrstNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+six.jobIntrst[i].intrstStatus+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+six.jobIntrst[i].intrstCont+'</td></tr>';
				    		$(".six_accordi2").append(tr);
				    	}
		    		}
		    		
		    		$(".six_accordi3").empty();
			    	if(six.jobVals!=null){
				    	for(var i=0; i<six.jobVals.length; i++){
				    		tr='<tr style="height: 71px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-103">'+six.jobVals[i].valsNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+six.jobVals[i].valsStatus+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+six.jobVals[i].valsCont+'</td></tr>';
				    		$(".six_accordi3").append(tr);
				    	}
		    		}
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        
        $('ul .tab7').click(function(){
            var seven;
			var jobCode=$("#jobCode").val();
		    $.ajax({
				url: "../jobDetail/"+jobCode+"/seven",
			 	type:'GET',
			   	traditional : true,
			   	dataType : 'json',
			   	async: false,
			  	success:function(result){
			    	seven=result;
			    	var tr;
			    	
			    	$(".seven_accordi1").empty();
			    	if(seven.jobActvImprtnc!=null){
				    	for(var i=0; i<seven.jobActvImprtnc.length; i++){
				    		tr='<tr style="height: 75px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-148">'+seven.jobActvImprtnc[i].jobActvImprtncNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+seven.jobActvImprtnc[i].jobActvImprtncStatus+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+seven.jobActvImprtnc[i].jobActvImprtncCont+'</td></tr>';
				    		$(".seven_accordi1").append(tr);
				    	}
		    		}
			    	
			    	$(".seven_accordi2").empty();
			    	if(seven.jobActvLvl!=null){
				    	for(var i=0; i<seven.jobActvLvl.length; i++){
				    		tr='<tr style="height: 75px;"><td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-163">'+seven.jobActvLvl[i].jobActvLvlNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+seven.jobActvLvl[i].jobActvLvlNm+'</td><td class="u-border-1 u-border-grey-30 u-table-cell">'+seven.jobActvLvl[i].jobActvLvlCont+'</td></tr>';
				    		$(".seven_accordi2").append(tr);
				    	}
		    		}
		    		
			    	
			   	},
			   	error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
        });
        
});

function closeWindow()
 {
  window.open('','_self').close(); 
}


		
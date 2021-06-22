/*window.history.pushState(null,'',location.href);

window.onpopstate=()=>{
	history.go(1);
	this.handleGoback();
};


window.onpageshow = function(event) {
if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
// Back Forward Cache로 브라우저가 로딩될 경우 혹은 브라우저 뒤로가기 했을 경우
	alert("히스토리백!!!!");
        }
}

var checkUnload = true;
    $(window).on("beforeunload", function(){
        if(checkUnload) return "이 페이지를 벗어나면 작성된 내용은 저장되지 않습니다.";
    });
*/
    

$(document).ready(function () {
    // Warning
    $(window).on('beforeunload', function(){
        //do something
        return "이 페이지를 벗어나면 작성된 내용은 저장되지 않습니다!";
    });
    // Form Submit
    $("#submit").click(function(event){
        // disable warning
        console.log("submit buyyon");
       	 $(window).off("beforeunload");
    });
});

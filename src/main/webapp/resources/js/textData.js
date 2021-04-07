/**
 * 
 */
 $(document).ready(function() {
    $("textarea").on("propertychange change keyup paste input", function() {
              $(this).siblings('#1page_textLimit').html("("+$(this).val().length+")");
       
       /*
              if($(this).val().length > 150) {
                  $(this).val($(this).val().substring(0, 150));
                  $(this).siblings('#1page_textLimit').html("(150 / 150)");
              }*/
          });
});
 
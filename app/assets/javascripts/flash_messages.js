$(document).ready(function(){
  var errorTimeOut = setTimeout(function(){
      $('#flash-messages').fadeOut('slow',function(){
        $(this).remove();
      });
    }, 2000);
});

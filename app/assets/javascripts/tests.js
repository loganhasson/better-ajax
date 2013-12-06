$(function(){

  $('.test-ajax').click(function(event){
    $.get('/tests/get', function(){

    }, "script");

    event.preventDefault();
  }); 
})
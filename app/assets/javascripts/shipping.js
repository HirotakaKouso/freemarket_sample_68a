$(document).on('turbolinks:load', function(){
  $('#existenceBtn').click(function(){
    $('#existenceInfo').css('display','block');
    $('#newInfo').css('display','none');
  });
  $('#newBtn').click(function(){
    $('#newInfo').css('display','block');
    $('#existenceInfo').css('display','none');
  });
});
alert('hffas')
$(document).ready({
  $('.map').contents().find('#banner')
  $('#banner').hide();
  skroll();
})

function skroll(){
  var s = skroller.init({
    forceHeight: false
  });
  s.refresh($('.homeslide'));
};
  alert('hello outside of function');

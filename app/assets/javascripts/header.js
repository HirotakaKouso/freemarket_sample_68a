$(function() {

  $(function(){
    $('.category__box').hover(function() {
      var category_obj = $(this).children('.category__box__parent');
      category_obj.show();
    }, function() {
      $(this).children('.category__box__parent').hide();
    });
  
    $('parent-category--list--item').hover(function() {
      var category_obj = $(this).children('.category__box__child');
      category_obj.show();
    }, function() {
      $(this).children('.category__box__child').hide();
    });
  
    $('.child_list').hover(function() {
      var category_obj = $(this).children('.gchild_top');
      category_obj.show();
    }, function() {
      $(this).children('.gchild_top').hide();
    });
  });
});
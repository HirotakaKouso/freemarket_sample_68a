$(document).on('turbolinks:load', function(){
  $(".content__wrapper__box__left__price__main__input").change(function(){
    var price =  $(".content__wrapper__box__left__price__main__input").val();
    $(".content__wrapper__box__left__price__sub__left__span").text(price/10);
    $(".content__wrapper__box__left__price__sub__right__span").text(price - price/10);
  })
});
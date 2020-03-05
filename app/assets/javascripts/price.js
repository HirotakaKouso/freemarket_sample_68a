$(document).on('turbolinks:load', function(){
  $(".content__wrapper__box__left__price__main__input").change(function(){
    var price =  $(".content__wrapper__box__left__price__main__input").val();
    $(".content__wrapper__box__left__price__sub__left__span").text(price/10);
    $(".content__wrapper__box__left__price__sub__right__span").text(price - price/10);//手数料計算

    if (price <= 299 || price >= 50001){     //価格が指定外の場合のalert
      alert('300~50000円で指定してください');
      $(".content__wrapper__box__left__price__main__input").val("");
    }
  })
});
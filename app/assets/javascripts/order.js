$(document).on('turbolinks:load', function(){
  $("#orderSubmit").click(function(){
    // 支払い方法が空の場合
    var value = $("#order_payment_id").val();
    if(value == ""){
      alert('支払い方法を選択してください')
      return false;
    }
    // 姓が空の場合
    if($("#order_last_name_receiver").val() == ""){
      alert('姓を入力してください');
      return false;
    }
    // 名が空の場合
    if($("#order_first_name_receiver").val() == ""){
      alert('名を入力してください');
      return false;
    }
    // せいが空の場合
    if($("#order_last_name_kana_receiver").val() == ""){
      alert('せいを入力してください');
      return false;
    }
    // めいが空の場合
    if($("#order_first_name_kana_receiver").val() == ""){
      alert('めいを入力してください');
      return false;
    }
    // 電話番号が空の場合
    if($("#order_tel_receiver").val() == ""){
      alert('電話番号を入力してください');
      return false;
    }
    // 電話番号が不適合な場合
    var tel = $("#order_tel_receiver").val(); 
    if(tel.match(/^0\d{9,10}$|^0\d{2,3}-\d{1,4}-\d{4}$/)){
    }else{
      alert('半角数字10,11文字で電話番号を入力してください');
      return false;
    }
    // 郵便番号が空の場合
    if($("#order_zip_code_receiver").val() == ""){
      alert('郵便番号を入力してください');
      return false;
    }
    // 郵便番号が不適合な場合
    var zip_code = $("#order_zip_code_receiver").val();
    if(zip_code.match(/^\d{7}$|^\d{3}-\d{4}$/)){
    }else {
      alert('半角数字7文字で郵便番号を入力してください');
      return false;
    }
    // 住所が空の場合
    if($("#order_address_receiver").val() == ""){
      alert('住所を入力してください');
      return false;
    }
  });
});

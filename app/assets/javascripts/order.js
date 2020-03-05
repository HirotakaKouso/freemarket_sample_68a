$(document).on('turbolinks:load', function(){
  $("#orderSubmit").click(function(){
    var value = $("#order_payment_id").val();
    console.log(value)
    if(value == ""){
      alert('支払い方法を選択してください')
      return false;
    }

    if($("#order_last_name_receiver").val() == ""){
      alert('姓を入力してください');
      return false;
    }
    if($("#order_first_name_receiver").val() == ""){
      alert('名を入力してください');
      return false;
    }
    if($("#order_last_name_kana_receiver").val() == ""){
      alert('せいを入力してください');
      return false;
    }
    if($("#order_first_name_kana_receiver").val() == ""){
      alert('めいを入力してください');
      return false;
    }
    if($("#order_tel_receiver").val() == ""){
      alert('電話番号を入力してください');
      return false;
    }
    if($("#order_zip_code_receiver").val() == ""){
      alert('郵便番号を入力してください');
      return false;
    }
    if($("#order_address_receiver").val() == ""){
      alert('住所を入力してください');
      return false;
    }
    if($("#order_first_name_receiver").val() == ""){
      alert('名を入力してください');
      return false;
    }
  });
});


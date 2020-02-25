$(document).on('turbolinks:load', function(){
  $(function(){

    function buildHTML(count) {
      if(count == 0) {
        var html = `<div class="preview-box" id="preview-box__${count}">
                      <div class="upper-box1">
                        <img src="" alt="preview" style="width:398px; height:370px;">
                      </div>
                      <div class="lower-box">
                        <div class="update-box">
                          <label class="edit_btn">編集</label>
                        </div>
                        <div class="delete-box" id="delete_btn_${count}">
                          <span>削除</span>
                        </div>
                      </div>
                    </div>`
      }else {
        var html = `<div class="preview-box" id="preview-box__${count}">
                      <div class="upper-box">
                        <img src="" alt="preview" style="width:114px; height:116px;">
                      </div>
                      <div class="lower-box">
                        <div class="update-box">
                          <label class="edit_btn">編集</label>
                        </div>
                        <div class="delete-box" id="delete_btn_${count}">
                          <span>削除</span>
                        </div>
                      </div>
                    </div>`
      }
      return html;
    }

    $(document).on('change', '.hiddenField', function() {
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $('.labelBox').attr({id: `labelBox--${id}`,for: `item_images_attributes_${id}_src`});
      var file = this.files[0];
      var reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = function() {
        var src = this.result;
        if ($(`#preview-box__${id}`).length == 0) {
          var count = $('.preview-box').length;
          var html = buildHTML(id);
          $(`.cameraIcon${id}`).css('display','none');
          $(".imageError").css('display', 'none');
          $(`.imageLabel--${id}`).append(html);
        }
        $(`#preview-box__${id} img`).attr('src', `${src}`);
        var count = $('.preview-box').length;
        if(count < 5){
          $('.labelBox').attr({id: `labelBox--${count}`,for: `item_images_attributes_${count}_src`});
        }
      }
    });

    $(document).on('click', '.delete-box', function() {
      var count = $('.preview-box').length;
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $(`#preview-box__${id}`).remove();
      $(`#item_images_attributes_${id}_src`).val("");
      $(`.cameraIcon${id}`).css('display','flex');

      if(id < 5){
        $('.labelBox').attr({id: `labelBox--${id}`,for: `item_images_attributes_${id}_src`});
      }
    });
    $(".content__wrapper__confirmation__button").click(function(){
      if ($(`.preview-box`).length == 0) {
        $(".imageError").css('display', 'block');
        $("html, body").animate({scrollTop:0}, 300, "swing");
        return false;
      }
    });
  });
})

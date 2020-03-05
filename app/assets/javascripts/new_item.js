$(document).on('turbolinks:load', function(){
  $(function(){
    function buildHTML(count) {
      if(count == 0) {
        if (window.location.href.match(/\/items\/\d+\/edit/)){
          var html = `<div class="preview-box" id="preview-box__${count}">
                        <div class="upper-box1">
                          <img src="" alt="preview" style="width:398px; height:370px;">
                        </div>
                      </div>`
        }else{
          var html = `<div class="preview-box" id="preview-box__${count}">
                        <div class="upper-box1">
                          <img src="" alt="preview" style="width:398px; height:370px;">
                        </div>
                        <div class="lower-box">
                          <div class="delete-box" id="delete_btn_${count}">
                            <span>削除</span>
                          </div>
                        </div>
                      </div>`
        }
      }else {
        var html = `<div class="preview-box" id="preview-box__${count}">
                      <div class="upper-box">
                        <img src="" alt="preview" style="width:114px; height:116px;">
                      </div>
                      <div class="lower-box2">
                        <div class="delete-box" id="delete_btn_${count}">
                          <span>削除</span>
                        </div>
                      </div>
                    </div>`
      }
      return html;
    }
    function buildHTML2(count) {
      var html = `<i class="fas fa-camera cameraIcon${count}" style="display: flex;"></i>`
      return html;
    }
    $(document).on('change', '.hiddenField', function() {
      var id = $(this).attr('id').replace(/[^0-9]/g, "");
      console.log(id)
      var file = this.files[0];
      var reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = function() {
        var src = this.result;
        if ($(`#item_images_attributes_${id}__destroy`)){
          $(`#item_images_attributes_${id}__destroy`).prop('checked',false);
        } 
        if ($(`#preview-box__${id}`).length == 0) {
          var html = buildHTML(id);
          $(`.cameraIcon${id}`).css('display','none');
          $(".imageError").css('display', 'none');
          $(`.imageLabel--${id}`).append(html);
        }else
        if (window.location.href.match(/\/items\/\d+\/edit/)){
          if ($(`#preview-box__${id}`).length == 1 ){
              var html = buildHTML(id);
              $(`.cameraIcon${id}`).css('display','none');
              $(".imageError").css('display', 'none');
              $(`.imageLabel--${id}`).html(html);
          }
        }
        $(`#preview-box__${id} img`).attr('src', `${src}`);
      }
    });
    $(document).on('click', '.delete-box', function() {
      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $(`#preview-box__${id}`).remove();
      $(`#item_images_attributes_${id}_src`).val("");
      $(`.cameraIcon${id}`).css('display','flex');
      $(`#item_images_attributes_${id}__destroy`).prop('checked', true);
      if (window.location.href.match(/\/items\/\d+\/edit/)){
        if ($(`#preview-box__${id}`).length == 0 || 1 ) {
          var html = buildHTML2(id);
          $(`.imageLabel--${id}`).append(html);
        }
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
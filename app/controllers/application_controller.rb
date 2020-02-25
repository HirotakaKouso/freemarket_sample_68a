class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:index, :show, :search,]
  def after_sign_in_path_for(resource)
    "/"
  end

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
  
  protected
  # 登録画面のストロングパロメーター
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:last_name,:first_name,:last_name_kana,:first_name_kana,:tel,:zip_code,:address,:prefecture_id,:birth_year,:birth_month,:birth_day])
    # 新規登録時(sign_up時)にそれぞれのキーのパラメーターを追加で許可する
  end
  # account_update

  # 登録画面での都道府県データ呼び出し
  # def new
  #   prefecture_id = Prefecture.all
  # end
end

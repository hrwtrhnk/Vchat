class ApplicationController < ActionController::Base
  protect_from_forgery :except => [:create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    topics_path # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    topics_path # ログアウト後に遷移するpathを設定
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

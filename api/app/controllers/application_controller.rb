class ApplicationController < ActionController::API
  # Cookie使用
  include ActionController::Cookies

  helper_method :current_user
  before_action :login_required

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_required
    return if @current_user
    render json: { error: 'ログインしてください' }, status: :unauthorized
  end
end

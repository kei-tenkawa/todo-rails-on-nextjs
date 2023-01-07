class SessionsController < ApplicationController
  skip_before_action :login_required
  skip_before_action :verify_authenticity_token, only: :create
  after_action :set_csrf_token_header, only: [:create, :show]

  def new
    render json: { message: "success" }
  end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      # TODO: ログイン状態を保持する
      # cookies.permanent.signed[:user_id] = user.id
      # cookies.permanent[:remember_token] = user.remember_token
      payload = { message: 'ログインしました。', name: user.name }
    else
      payload = { errors: ['メールアドレスまたはパスワードが正しくありません。'] }
    end
    render json: payload
  end

  def destroy
    reset_session
    payload = { message: 'ログアウトしました' }
    render json: payload
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end

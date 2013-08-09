class SessionsController < Devise::SessionsController

  # POST /resource/sign_in
  def create
    user = User.where(email: params[:user][:email]).first
    if user && user.valid_password?(params[:user][:password])
      set_flash_message(:notice, :signed_in)
      sign_in user
      redirect_to home_path and return
    else
      set_flash_message(:notice, :invalid)
      redirect_to request.referer and return
    end
  end


end
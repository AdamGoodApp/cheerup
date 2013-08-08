class SessionsController < Devise::RegistrationsController

  # POST /resource/sign_in
  def create
    user = User.where(email: params[:user][:email]).first
    if user && user.valid_password?(params[:user][:password])
      set_flash_message(:notice, :signed_in)
      sign_in user
      redirect_to home_path
    else
      set_flash_message(:notice, :invalid)
      redirect_to request.referer
    end
  end

    # DELETE /resource/sign_out
  def destroy
    redirect_path = after_sign_out_path_for(resource_name)
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message :notice, :signed_out if signed_out && is_navigational_format?

    # We actually need to hardcode this as Rails default responder doesn't
    # support returning empty response on GET request
    respond_to do |format|
      format.all { head :no_content }
      format.any(*navigational_formats) { redirect_to redirect_path }
    end
  end


end
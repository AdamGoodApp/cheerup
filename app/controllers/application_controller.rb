class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url , alert: "You can't access this page"
  end

  protect_from_forgery

  before_filter :store_location

  def after_sign_up_path_for(resource)
    home_path
  end

  def after_sign_in_path_for(resource)
    home_path
  end

  def after_update_path_for(resource)
    home_path
  end

def store_location
 # store last url - this is needed for post-login redirect to whatever the user last visited.
    if (request.fullpath != "/users/sign_in" && \
        request.fullpath != "/users/sign_up" && \
        !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath
    end
end

end

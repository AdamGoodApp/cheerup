class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
 redirect_to root_url , alert: "You can't access this page"
end

  protect_from_forgery
end

class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :params_device, if: :devise_controller?
  layout :template_resource
  helper :all

    private

    def template_resource
       if user_signed_in? == false
         "login"
       else
         "application"
       end
    end

    def params_device
      added_attrs = [:name, :last_name, :email, :password, :password_confirmation, :remember_me, :role]
      
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end


end

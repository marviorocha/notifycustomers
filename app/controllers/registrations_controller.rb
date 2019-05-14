class RegistrationsController < Devise::RegistrationsController

before_action :params_device, if: :devise_controller?

  private
  def params_device
    added_attrs = [:name, :last_name, :email, :password, :password_confirmation, :remember_me, :role]

    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end

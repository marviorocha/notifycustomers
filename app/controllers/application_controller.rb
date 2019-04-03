class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  layout :template_resource

    private

    def template_resource

       if user_signed_in? == false
         "login"
       else
         "application"
       end

    end



end

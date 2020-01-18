class ApplicationController < ActionController::Base
    before_action :set_view_count_cookie
    before_action :authenticate_user!

    private

    def set_view_count_cookie 
        if cookies[:views]
           cookies[:views] = cookies[:views].to_i + 1 
        else
           cookies[:views] = 0 
        end
    end

    rescue_from CanCan::AccessDenied do |exception|
        flash[:warning] = exception.message 
        flash[:alert] = "ERROR: You can't access this, you're not an admin."
        redirect_to root_path
    end
end

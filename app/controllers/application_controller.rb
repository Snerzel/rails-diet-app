class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    def home
    end

  

    private

    def logged_in?
      !!session[:user_id] || !!session[:pro_id]
    end
  
    def current_user
      @current_user ||= User.find_by_id(session[:user_id]) 
      @current_user ||= Pro.find_by_id(session[:pro_id])
    end

    # def current_pro
    #   @current_pro ||= Pro.find_by_id(session[:pro_id]) if session[:pro_id]
    # end
  
    def redirect_if_not_logged_in
      redirect_to '/login' if !logged_in?
    end
end

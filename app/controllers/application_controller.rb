class ApplicationController < ActionController::Base
    helper_method :current_user, :current_pro, :logged_in?, :is_pro?
    def home
      
    end

  

    private

    def logged_in?
      !!session[:user_id] || !!session[:pro_id]
    end
  
    def current_user
      @user ||= User.find_by_id(session[:user_id]) if session[:user_id]
      #@current_user ||= Pro.find_by_id(session[:pro_id])
    end

    def current_pro
      @pro ||= Pro.find_by_id(session[:pro_id]) if session[:pro_id]
    end
  
    def is_pro?
      logged_in? == session[:pro_id]
    end

    def is_user?
      logged_in? == session[:user_id]
    end

    # def redirect_if_not_logged_in
    #   redirect_to '/login' if !logged_in?
    # end
end

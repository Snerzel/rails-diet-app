module ApplicationHelper

    def logged_in?
        !!session[:user_id] || !!session[:pro_id]
    end

    def current_user
        @user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def current_pro
        @pro ||= Pro.find_by_id(session[:pro_id]) if session[:pro_id]
      end

    def owner?(object)
        current_user == object.user 
      end

    def is_pro?
        logged_in? == session[:pro_id]
    end

    def is_user?
        logged_in? == session[:user_id]
      end
end

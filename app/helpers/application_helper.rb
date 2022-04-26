module ApplicationHelper

    def logged_in?
        !!session[:user_id] || !!session[:pro_id]
    end

    def current_user
        @user ||= User.find_by_id(session[:user_id]) if session[:user_id]
        #@current_user ||= Pro.find_by_id(session[:pro_id])
    end
end

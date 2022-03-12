class SessionsController < ApplicationController

    def new_user

    end

    def create
        # if params[google_oauth2]
        #     @user = User.create_by_google_omniauth(auth)
        #     session[:user_id] = @user.id
        #     redirect_to '/'
        if @user
            @user = User.find_by(:email => params[:email])
            session[:current_user_id] = @user.id
            redirect_to '/'
        elsif @pro
            @pro = Pro.find_by(:email => params[:email])
            session[:current_user_id] = @pro.id
            redirect_to '/'
        end
    end
end

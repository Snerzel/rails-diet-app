class SessionsController < ApplicationController

    def new_user

    end

    def create
        @user = User.find_by(:email => params[:email])
        if @user
            session[:current_user_id] = @user.id
            redirect_to '/'
        else

        end
    end
end

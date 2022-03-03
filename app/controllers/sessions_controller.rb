class SessionsController < ApplicationController

    def new_user

    end

    def create
        @user = User.find_by(:email => params[:email])
        if @user

        else

        end
    end
end

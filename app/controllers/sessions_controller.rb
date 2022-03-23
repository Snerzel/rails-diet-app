class SessionsController < ApplicationController

    def new_user
        
    end

    def destroy
        session.delete(current_user.id)
        redirect_to '/'
      end

    def create
        # if params[google_oauth2]
        #     @user = User.create_by_google_omniauth(auth)
        #     session[:user_id] = @user.id
        #     redirect_to '/'
        # @pro = Pro.find_by(id: params[:id])
        # session[:pro_id] = @pro.id
        # redirect_to pro_path(@pro)
        if @current_user == Pro.find_by(:email => params[:email])
        session[:email] = params[:email]
        redirect_to "/pros/#{current_user.id}"
        elsif @current_user == User.find_by(:email => params[:email])
            session[:email] = params[:email]
            redirect_to "/users/#{current_user.id}"
        end
            # @user = User.find_by(:email => params[:email])
            # session[:user_id] = @user.id
            # redirect_to "/users/#{user.id}"

            # session[:pro_id] = params[:pro][:id]
            # redirect_to pro_path(Pro.find(params[:pro][:id]))
    end
end

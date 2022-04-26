class SessionsController < ApplicationController

    def new
        @user = User.new
    end

   

    

    def create
     @user = User.find_by(email: params[:email])
     
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        
        redirect_to user_path(@user)
      else
        flash[:error] = "Incorrect credentials. Please try again."
        redirect_to root_path
      end
        # if params[:provider] == 'google_oauth2'
        #     @user = User.create_by_google_omniauth(auth)
        #     session[:user_id] = @user.id
        #     redirect_to user_path(@user)
      
        #     elsif @current_user == Pro.find_by(:email => params[:email])
        #         session[:email] = params[:email]
        #         redirect_to "/pros/#{current_user.id}"
        #     elsif @current_user == User.find_by(:email => params[:email])
        #         session[:email] = params[:email]
        #         redirect_to user_path(@user)
        # end
        # if @user && @user.authenticate(password: params[:email][:password])
        #     session[:user_id] = @user.id
        #     redirect_to user_path(@user)
        # elsif  @pro && @pro.authenticate(password: params[:email][:password])
        #         session[:pro_id] = @pro.id
        #         redirect_to pro_path(@pro)
        # else
        #     flash[:error] = "Incorrect credentials. Please try again."
        #     redirect_to root_path
        #   end
    end

    def omniauth
        @user = User.create_by_google_omniauth(auth)
    
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      end

      def destroy
        session.delete :user_id
        redirect_to '/'
      end
    
      private
    
        def auth
          request.env['omniauth.auth']
        end
end

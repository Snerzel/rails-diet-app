class SessionsController < ApplicationController

    def new
        @user = User.new
    end

   

    

    def create
     
        if params[:provider] == 'google_oauth2'
            @user = User.create_by_google_omniauth(auth)
            session[:user_id] = @user.id
            redirect_to user_path(@user)
      
        else
            flash[:error] = "Incorrect credentials. Please try again."
            redirect_to root_path
          end
    end

    def omniauth
        @user = User.create_by_google_omniauth(auth)
    
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      end

      def destroy_user
        session.delete :user_id
        redirect_to '/'
      end

      def destroy_pro
        session.delete :pro_id
        redirect_to '/'
      end
    
      private
    
        def auth
          request.env['omniauth.auth']
        end
end

class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def edit
      @user = User.find_by_id(params[:id])
      
        if current_user.id != @user.id
          redirect_to current_user
        end
    end

    def update
      @user = User.find_by_id(params[:id])
        if @user.update(user_params)
          @user.update(user_params)
          redirect_to @user
        else
          render 'edit'
        end
      end

    def index
        @users = User.all
    end

    def create
      #added pro to user_params. To make sure a user has a pro.
      # user_params[:pro] = Pro.find_by_id(params[:pro])
        @user = User.new(user_params)
     if @user.save!
         session[:user_id] = @user.id
         redirect_to user_path(@user)
        else
        render :new
        end
    end

    def user_session
      @user = User.find_by(email: params[:email])
     
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        
        redirect_to user_path(@user)
      else
        flash[:error] = "Incorrect credentials. Please try again."
        redirect_to root_path
      end
    end

    def show
        #redirect_if_not_logged_in
      #   @user = User.find_by_id(session[:user_id])
      #  if @user 
      #   redirect_to user_path(@user)
      #  else 
      #   redirect_to '/'
      #  end
      @user = User.find(params[:id])
      current_user
    end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :email, :password, :age, :weight, :gender, :health, :diet_type, :restrictions, :pro_id)
      end
end

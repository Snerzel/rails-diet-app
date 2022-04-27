class ProsController < ApplicationController
    def new
        @pro = Pro.new
    end

    def create
        @pro = Pro.new(pro_params)
     if @pro.save
         session[:pro_id] = @pro.id
         redirect_to pro_path(@pro)
        else
        render :new
        end
    end

    def pro_session
        @pro = Pro.find_by(email: params[:email])

        if @pro && @pro.authenticate(params[:password])
            session[:pro_id] = @pro.id
            redirect_to pro_path(@pro)
        else
            flash[:error] = "Incorrect credentials. Please try again."
            redirect_to root_path
         end         
    end

    def show
        # redirect_if_not_logged_in
        # @pro = Pro.find_by_id(params[:id])
        # if !@pro
        #     redirect_to '/'
        
        # end
        current_pro
    end
    
      private
    
      def pro_params
        params.require(:pro).permit(:name, :email, :password)
      end
end

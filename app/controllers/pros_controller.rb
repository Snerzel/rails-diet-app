class ProsController < ApplicationController

    def create
        @pro = Pro.new(pro_params)
     if @pro.save
         session[:pro_id] = @pro.id
         redirect_to pros_path(@pro)
        else
        render :new
        end
    end

    def show
        redirect_if_not_logged_in
        @pro = Pro.find_by_id(params[:id])
        if !@pro
            redirect_to '/' 
        end
    end
    
      private
    
      def pro_params
        params.permit(:name, :email, :password_digest)
      end
end

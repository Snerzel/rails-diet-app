class ProsController < ApplicationController

    def new
    end


    def create
        @pro = Pro.new
        @pro.name = params[:name]
        @pro.email = params[:email]
        @pro.password_digest = params[:password_digest]
        @pro.save

        redirect_to '/'
    end
end

class User < ApplicationRecord
    belongs_to :pro 
    has_many :meals
    has_many :allergens through: :meals
    def new

    end

    def create
        @user = User.new
        @user.name = params[:name]
        @user.email = params[:email]
        @user.password_digest = params[:password_digest]
        @user.age = params[:age]
        @user.weight = params[:weight]
        @user.health = params[:health]
        @user.diet_type = params[:diet_type]
        @user.restrictions = params[:restrictions]
        @user.save

        redirect_to '/'
    end
end

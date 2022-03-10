class MealsController < ApplicationController


    def new
    end

    def create
        @meal = Meal.new
        @meal.name = params[:name]
        @meal.nutrition_level = params[:nutrition_level]
        @meal.diet_type = params[:diet_type]
        @meal.ingredients = params[:ingredients]
        @meal.save

        redirect_to '/'
    end
end

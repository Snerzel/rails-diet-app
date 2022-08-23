class MealsController < ApplicationController


    def new
      @meal = Meal.new
      
    end

    def index
        @meals = Meal.all
    end

    def show
        @meal = Meal.find_by_id(params[:id])
    end

    def edit
      @meal = Meal.find_by_id(params[:id])
      if current_user.id != @meal.user_id
        redirect_to current_user
      end
        
    end

    def update
      @meal = Meal.find_by_id(params[:id])
        if @meal.update(meal_params)
          @meal.update(meal_params)
          redirect_to @meal
        else
          render 'edit'
        end
      end

      def destroy
        @meal.destroy
          redirect_to meals_path
      end

    def create
      
        @meal = current_user.meals.build(meal_params)
        if @meal.save!
            redirect_to meal_path(@meal)
        else
            render :new
        end
    end
    private
    
      def meal_params
        params.require(:meal).permit(:name, :nutrition_level, :diet_type, :ingredients, :user, :category_id)
      end
end

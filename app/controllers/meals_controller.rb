class MealsController < ApplicationController


    def new
    end

    def index
        @meals = Meal.all
    end

    def show
        @meal = Meal.find_by(params[:id])
    end

    def edit
        
    end

    def update
        if @meal.update(meal_params)
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
        @meal = Meal.new(meal_params)
       # @meal.user.name = current_user.id
        if @meal.save!
            redirect_to meals_path(@meal)
        else
            render :new
        end
    end
    private
    
      def meal_params
        params.permit(:name, :nutrition_level, :diet_type, :ingredients)
      end
end

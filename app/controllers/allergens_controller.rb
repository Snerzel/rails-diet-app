class AllergensController < ApplicationController

    def new
    end
    
    def create
        @allergen = Allergen.new
        @allergen.ingredients = params[:ingredients]
        @allergen.save
    end
end

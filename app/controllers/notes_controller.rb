class NotesController < ApplicationController


    def new
        @note = Note.new
    end

    def index 
        @notes = Note.all
    end
    
    def show
        @meal = Meal.find_by_id(params[:id])
    end
    
    def create
        
        @note = current_pro.notes.build(note_params)
        if @note.save!
            redirect_to meal_path
            else
                render :new
        end
    end

    private
    
      def note_params
        params.require(:note).permit(:note, :meal_id, :pro)
      end
end

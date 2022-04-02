class NotesController < ApplicationController


    def new
    end

    def index 
        @notes = Note.all
    end
    
    def create
        @note = note.new
        @note.note = params[:note]
        @note.save
    end
end

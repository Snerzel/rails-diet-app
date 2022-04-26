class NotesController < ApplicationController


    def new
        @note = Note.new
    end

    def index 
        @notes = Note.all
    end
    
    def create
        @note = Note.new
        @note.note = params[:note]
        @note.save
    end
end

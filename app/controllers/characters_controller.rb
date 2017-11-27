#Controller fot Characters model
class CharactersController < ApplicationController
    #New method to add a new character to the Characters model
    def new
        @character = Character.new
    end
    #Create method to create new character
    def create
        @character = Character.new(character_params)
        #input validation
        if @character.save
            #render created character
            redirect_to @character
        else
            #if character does not successfully create, return to new page
            render 'new'
        end
    end
    #show method to view a new character
    def show
        ##Find a character based on ID
        @character = Character.find(params[:id])
    end
    #index method to show all characters
    def index
        @characters = Character.all
    end
    #edit method to allow editing of characters
    def edit
        @character = Character.find(params[:id])
    end
    #update method to aid in editing of characters
    def update
        @character = Character.find(params[:id])
        #input validation
        if @character.update(character_params)
            #render edited character
            redirect_to @character
        else
            #return to edit page in the event of failed edit
            render 'edit'
        end
    end
    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        redirect_to characters_path
    end
end

private
    def character_params
        params.require(:character).permit(:charname, :level, :charclass, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :race)
    end
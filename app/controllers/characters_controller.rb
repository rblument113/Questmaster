class CharactersController < ApplicationController
    def new
        @character = Character.new
    end
    def create
        @character = Character.new(character_params)
        if @character.save
            redirect_to @character
        else
            render 'new'
        end
    end
    def show
        @character = Character.find(params[:id])
    end
    def index
        @characters = Character.all
    end
    def edit
        @character = Character.find(params[:id])
    end
    def update
        @character = Character.find(params[:id])
        if @character.update(character_params)
            redirect_to @character
        else
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
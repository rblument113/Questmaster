class CharactersController < ApplicationController
    def new
    end
    def create
        @character = Character.new(article_params)
        @character.save
        redirect_to @character
    end
    def show
        @character = Character.find(params[:id])
    end
end

private
    def article_params
        params.require(:character).permit(:charname, :level, :charclass, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :race)
    end
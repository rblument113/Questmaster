class CharactersController < ApplicationController
    def new
        @character = Character.new
    end
    def create
        @character = Character.new(article_params)
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
end

private
    def article_params
        params.require(:character).permit(:charname, :level, :charclass, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :race)
    end
#Controller fot Characters model
class CharactersController < ApplicationController
    def new
        @character = Character.new
    end
    def create
        @character = Character.new(character_params)
        if(@character.strength == nil)
                @character.strength = rand(1..20)
        end
        if(@character.dexterity == nil)
                @character.dexterity = rand(1..20)
        end
        if(@character.constitution == nil)
                @character.constitution = rand(1..20)
        end
        if(@character.intelligence == nil)
                @character.intelligence = rand(1..20)
        end
        if(@character.wisdom == nil)
                @character.wisdom = rand(1..20)
        end
        if(@character.charisma == nil)
                @character.charisma = rand(1..20)
        end
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
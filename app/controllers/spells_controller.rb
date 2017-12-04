class SpellsController < ApplicationController
    def create
       @character = Character.find(params[:character_id])
       @spell = @character.spells.create(spell_params)
       redirect_to character_path(@character)
    end
    
    private
        def spell_params
           params.require(:spell).permit(:name, :level, :castingtime, :range, :components, :duration)
        end
end

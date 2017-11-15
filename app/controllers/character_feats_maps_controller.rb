class CharacterFeatsMapsController < ApplicationController
    def create
        @character = Character.find(params[:character_id])
        @feat = Feat.find(params[:feat_id])
        @character_feats_map = @character.character_feats_maps.create(character_feats_map_params)
        @character_feats_map = @feat.character_feats_maps.create(character_feats_map_params)
    end
    private
    def character_feats_map_params
        params.require(:character_feats_map).permit(:charname, :featname)
    end
end

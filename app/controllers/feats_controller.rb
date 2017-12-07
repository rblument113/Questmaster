class FeatsController < ApplicationController
    def create
        @character = Character.find(params[:character_id])
        @feat = @character.feats.create(feat_params)
        redirect_to character_path(@character)
    end
    def destroy
       @character = Character.find(params[:character_id])
       @feat = @character.feats.find(params[:id])
       @feat.destroy
       redirect_to character_path(@character)
    end
    private
        def feat_params
            params.require(:feat).permit(:featname, :level)
        end
end

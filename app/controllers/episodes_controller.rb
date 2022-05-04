class EpisodesController < ApplicationController

    def index
        render json: Episode.all 
    end

    def show
        episode = Episode.find(params[:id])
        render json: episode, serializer: EpisodeWithGuestSerializer
    end

    def destroy
        episode = Episode.find(params[:id])
        episode.destroy
        head :no_content
    end
end

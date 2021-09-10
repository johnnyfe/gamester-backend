class GameplaysController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        gameplays = Gameplay.all
        render json: gameplays
    end

    def show
        gameplay = find_gameplay
        render json: gameplay, include: [:game ,:player]
    end

    def create
        gameplay = Gameplay.create(gameplay_params)
        render json: gameplay
    end

    def update
        gameplay = find_gameplay
        gameplay.update!(gameplay_params)
        render json: gameplay
    end

    def destroy
        gameplay = find_gameplay
        gameplay.destroy
        head :no_content
    end

    private

    def gameplay_params
        params.require(:gameplay).permit(:game_time, :video_url, :title)
    end

    def find_gameplay
        Gameplay.find(params[:id])
    end

    def render_not_found
        render json: { error: "gameplay not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end

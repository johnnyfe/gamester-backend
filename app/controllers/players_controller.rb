class PlayersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        players = Player.all
        render json: players
    end

    def show
        player = find_player
        render json: player
    end

    def create
        player = Player.create!(player_params)
        render json: player
    end

    def update
        player = find_player
        player.update!(player_params)
        render json: player
    end

    def destroy
        player = find_player
        player.destroy
        head :no_content
    end

    private

    def player_params
        params.require(:player).permit(:name, :age, :years_of_experience, :country, :photo_url)
    end

    def find_player
        Player.find(params[:id])
    end

    def render_not_found
        render json: { error: "player not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
    
end

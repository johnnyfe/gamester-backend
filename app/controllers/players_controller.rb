class PlayersController < ApplicationController

    def index
        players = Player.all
        render json: players, except: [:updated_at, :created_at]
    end

    def show
        player = Player.find_by(id: params[:id])
        render json: player, except: [:updated_at, :created_at]
    end

    

end

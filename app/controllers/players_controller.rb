class PlayersController < ApplicationController

    def index
        players = Player.all
        render json: players, except: [:updated_at, :created_at]
    end

    

end

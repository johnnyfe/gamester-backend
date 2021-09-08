class Player < ApplicationRecord
    has_many :gameplays
    has_many :games, through: :gameplay
end

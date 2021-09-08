class Game < ApplicationRecord
  belongs_to :console
  has_many :gameplays
  has_many :players, through :gameplay
end

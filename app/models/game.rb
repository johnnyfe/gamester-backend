class Game < ApplicationRecord
  belongs_to :console
  has_many :gameplays, dependent: :destroy
  has_many :players, through: :gameplay
end

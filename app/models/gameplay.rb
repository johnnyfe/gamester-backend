class Gameplay < ApplicationRecord
  belongs_to :game
  belongs_to :player

  validates :game_time, presence: true, numericality: { only_integer: true , greater_than: 0, less_than: 60}
  validates :title, presence:true, uniqueness: true

end

class Game < ApplicationRecord
  belongs_to :console
  has_many :gameplays, dependent: :destroy
  has_many :players, through: :gameplay

  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :cost, presence: true, numericality: { only_integer: true, greater_than: 9, less_than: 100 }
  validates :rate, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 11 }
  validates :average_length, presence: true, numericality: { only_float: true, greater_than: 10, less_than: 100 }
  validates :img_url, presence: true, uniqueness: true
  validates :storage_space, presence: true, numericality: { only_float: true, greater_than: 0, less_than: 250 }
end

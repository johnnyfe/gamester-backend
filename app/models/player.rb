class Player < ApplicationRecord
    has_many :gameplays
    has_many :games, through: :gameplay

    validates :name, presence: true, uniqueness: true
    validates :age, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 120}
    validates :years_of_experience, presence: true, numericality: { only_integer: true, greater_than: -1, less_than: 10}
    validates :country,  presence: true
    validates :photo_url, presence: true, uniqueness: true
end

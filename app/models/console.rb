class Console < ApplicationRecord
    has_many :games, dependent: :destroy
end

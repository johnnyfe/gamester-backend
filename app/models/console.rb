class Console < ApplicationRecord
    has_many :games, dependent: :destroy

    validates :name, presence: true, uniqueness: true
    validates :cost, presence: true, numericality: { only_integer: true, greater_than: 150, less_than: 1000 }
    validates :img_url, presence: true, uniqueness: true
    validates :storage_capacity, presence: true, numericality: { only_integer: true , greater_than: 1, less_than: 5000}
end

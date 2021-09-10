class GameSerializer < ActiveModel::Serializer
    attributes :id, :name, :category, :cost, :rate, :average_length, :img_url, :storage_space
end
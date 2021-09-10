class ConsoleSerializer < ActiveModel::Serializer
    attributes :id, :name, :cost, :img_url, :storage_capacity
end
class PlayerSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :years_of_experience, :country, :photo_url
end
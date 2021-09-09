class PlayerSerializer < ActiveModel::Serializer
    attributes :name, :age, :years_of_experience, :country, :photo_url
end
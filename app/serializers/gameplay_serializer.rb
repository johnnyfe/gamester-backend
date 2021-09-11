class GameplaySerializer < ActiveModel::Serializer
    attributes :id, :game_time, :likes, :video_url, :title, :game, :player
end
class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :shared_with, :songs
  has_many :songs
end
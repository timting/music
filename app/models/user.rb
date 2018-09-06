class User < ApplicationRecord
  has_many :my_playlists, class_name: 'Playlist', dependent: :destroy, foreign_key: 'owner_id'

  def playlists_shared_with_me
    Playlist.where("':id' = ANY(shared_with)", id: id)
  end
end

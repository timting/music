class Playlist < ApplicationRecord
  belongs_to :user, foreign_key: 'owner_id'

  # Using a manual relation since we don't need to
  # currently be able to find playlists through songs
  def songs
    Song.where(id: song_ids)
  end

  def share(user_id)
    self.shared_with << user_id
    save
  end

  def unshare(user_id)
    self.shared_with = shared_with - Array(user_id)
    save
  end

  def can_be_viewed_by?(user_id)
    shared_with.include?(user_id) || owner_id == user_id
  end

  def can_be_shared_by?(user_id)
    owner_id == user_id
  end
end

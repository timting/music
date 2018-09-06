class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :owner_id
      t.string :song_ids, array: true, default: []
      t.string :shared_with, array: true, default: []

      t.timestamps
    end
  end
end

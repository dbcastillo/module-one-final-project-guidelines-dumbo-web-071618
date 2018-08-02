class CreatePlaylistSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :playlistsongs do |t|
      t.integer :playlist_id 
      t.integer :song_id 
    end 
  end
end

class Song < ActiveRecord::Base
    has_many :play_list_songs
    belongs_to :artist
    belongs_to :genre
    
    has_many   :playlists, through: :play_list_songs

end 
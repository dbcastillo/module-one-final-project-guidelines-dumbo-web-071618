class Playlist < ActiveRecord::Base
 belongs_to :user
 has_many :play_list_songs
 has_many :songs, through: :play_list_songs
 has_many :artists, through: :songs 
 has_many :genres, through: :songs



end 
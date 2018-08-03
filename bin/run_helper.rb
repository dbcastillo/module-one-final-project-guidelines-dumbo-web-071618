require 'tty-prompt'

def display 
    prompt = TTY::Prompt.new 
    puts "Please use arrows up and down and press enter to select."
    ans = prompt.select("Are you a new or existing user?", %w(newuser existing))
    ans == "newuser" ? create_user : find_user
end 




def create_user
prompt = TTY::Prompt.new 
ans = prompt.ask ("Please enter a username to create a new user") 
user = User.create 
user.name = ans 
user.save

puts "Thank you #{user.name}, your account has been set up."
  

end 


def find_user 
    prompt = TTY::Prompt.new 
    ans = prompt.ask ("Please enter your username") 
    response =  User.find_by(name: ans) 
    if response.nil? 
        puts "Sorry, that user name does not exist. Please enter a valid name" 
    else
         puts "Welcome #{response.name}"
         user_options 
    end

end



def user_options 
    prompt = TTY::Prompt.new 
    ans = prompt.select("Would you like to create a new playlist or show your current playlists?", %w(newplaylist showexisting)) 
 
    ans == "newplaylist" ? new_playlist : show_playlist 


end 

def new_playlist
    prompt = TTY::Prompt.new 
    ans = prompt.ask ("Please select a name for your playlist")
    response = Playlist.new 
    response.name = ans 
    response.user = User.find_by(name: ans) 
    prompt2 = TTY::Prompt.new 
    ans2 = prompt.ask ("Please select a song for your playlist")
    song = Song.new(name: "ans2")
    song.save 
    song_res = Song.find_by(id:song.id)
    response.song_id = song_res

    response.save
    #response.user
    #prompt2 = TTY::Prompt.new 
    #ans2 = prompt.ask ("Please select a song to add to the playlist")
    #response.song = 

    

  
end 

#def show_playlist
 #Playlist.all.collect do |ele|
  #ele.playlist_id  
 #end 
#end 
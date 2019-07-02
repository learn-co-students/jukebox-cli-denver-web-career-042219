songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
  #"Hi, #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do | song, index |
    puts "#{index + 1}. #{song}"
  end
end

def play(songs) 
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  response = nil
  songs.each_with_index do | song, index |
    if user_response == song || user_response.to_i == index + 1
     response = song
    end 
  end     
    if response == nil
      puts "Invalid input, please try again"
    else 
      puts "Playing #{response}"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_response = nil
  until user_response == "exit"
    puts "Please enter a command:"
    user_response = gets.chomp
    case user_response
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end 
  end
  exit_jukebox 
end





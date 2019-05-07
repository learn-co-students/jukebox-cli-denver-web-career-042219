require 'pry'

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


def help
  puts "I accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
          - exit : exits this program"
end



def list(songs)
  puts songs
end



def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp

  if selection.length == 1 #since there are 9 songs and only 9 integers under 2 digits, could add an attional if to check if in range
    selection_integer = selection.to_i
      puts "Playing #{songs[selection_integer - 1]}"

  elsif selection.length > 1
    songs.find do |artist_song|
      if artist_song == selection
        puts "Playing #{artist_song}"
      end
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
  puts "Goodbye"
end






def run(songs)

  puts "Please enter a command:"

  command = gets.chomp

  if command == "help"
    help
  elsif command == "list"
    list
  elsif command == "play"
    play
  elsif command == "exit"
    exit_jukebox
  end
end

require "pry"

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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  number = 0
  songs.each_with_index do |title, index|
#    binding.pry
    if selection == title
      puts "Playing #{title}"
    elsif selection.to_i == (index + 1)
      puts "Playing #{title}"
    else
      number += 1
    end
  end
  if number == songs.length
    puts "Invalid input, please try again"
  end
end

def list (songs)
  songs.each_with_index { |title, index| puts "#{index + 1}. #{title}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  if input == "exit"
    exit_jukebox
  end
  while input != "exit"
    if input == "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "help"
      help
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.chomp
    else
      puts "Please enter a command:"
      input = gets.chomp
    end
  end
end

# play (["Hello World", "Goodbye World", "Hello Glory!"])

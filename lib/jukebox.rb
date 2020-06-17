# Add your code here
require "pry"
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end
 

def list(songs)
  songs.each_with_index {|song_name, index|
  puts "#{index.to_i + 1}. #{song_name}"
  }
end 


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip 
  if songs.include?(input)
    puts "Playing #{input}"
  elsif (0 < input.to_i && input.to_i < (songs.length + 1))
      puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs) 
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit" do
    if input == "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "help"
      help
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "exit"
      exit_jukebox
    end 
  end 
  exit_jukebox
end 








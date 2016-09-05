#!/usr/bin/ruby
class Song
  @duration
  attr_accessor :name
  attr_accessor :duration
  def initialize
    @name = 'Misty'
  end
  def play
    case
    when @name == 'Misty'
      puts 'Not again!'
    when @duration > 120
      puts 'Too long!'
    when Time.now.hour > 21
      puts "It's too late"
    else
      puts 'aaaaaaaaaaaaaaaaa'
    end
  end
end

song = Song.new
song.duration = 130
song.play

song.name = 'Yesterday once more'
song.play

song2 = Song.new
if song2.duration.nil? then
  puts 'song2.duration is null'
else 
  puts song2.duration
end
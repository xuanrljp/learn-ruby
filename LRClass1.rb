#!/usr/bin/ruby
class Vehicle
  #@color = "RED"
  @speed
  attr_accessor :color
  attr_accessor :power  
  attr_accessor :speed
  def initialize
    @power = :gas
    @speed = 100
    @color = "RED"
  end
  def drive
    if @color.nil? then
      puts '@color is null'
    end
    puts "You #{@color} car is powered by #{@power}, speed is #{@speed}"
  end
end

class Tesla < Vehicle
  def initialize
    super
    @power = :electrical
    @speed = 250
    @battery = "Battery Total:1000km Left:100Km"
  end
  def drive
    super
    puts @battery
  end
end

vehicle = Vehicle.new
vehicle.drive

tesla = Tesla.new
tesla.drive
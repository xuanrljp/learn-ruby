#!/usr/bin/ruby
class Vehicle
  @@static_v = 10
  @color
  MY_CONST = 'const test'
  attr_accessor :speed  
  attr_accessor :gas
  attr_accessor :nenpi
  attr_accessor :color
  #attr_accessor :static_v

  def initialize
    #速度(km/H)
    @speed = 100
    #ガソリン(L)
    @gas = 50
    #燃料あたりの走行距離(km/L)
    @nenpi = 10
  end

  def indicate
    puts "Gas: #{@gas} Max drive distance  #{@gas * @nenpi}"
  end 

  def refuel(gas)
    @gas += gas;
  end

  def drive(km)
    if @color.nil? then
      puts '@color is null'
    else 
      puts puts "Your car is #{@color}."
    end

    if( @gas * @nenpi < km) then 
      puts "Your car hasn't enough gas."
    else
      @gas = @gas - km / @nenpi;
    end
    self.indicate
  end

  def self.self_method
    puts "===self_method==="
  end

  def self.static_v
    @@static_v
  end
  def self.static_v=(v)
    @@static_v = v
  end  

end

class AudiS8 < Vehicle
  def initialize
    super
    @color = "RED"
  end
  def drive(km)
    super
    puts "Your #{@color} car is super cool."
  end
end

vehicle = Vehicle.new
vehicle.drive 100

puts "====="

audi = AudiS8.new
audi.drive 200

audi.drive 200
audi.drive 200

audi.refuel(40)
audi.drive 200


Vehicle.self_method
Vehicle.static_v = 20
puts Vehicle.static_v

#puts Vehicle.MY_CONST //compiler error:undefined method `MY_CONST'
puts Vehicle::MY_CONST
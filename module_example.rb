module Moveable
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def speed
    @speed
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Moveable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike

  include Moveable

  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new
car1 = Car.new

p bike1.speed
bike1.accelerate
p bike1.speed
puts "----"
p car1.speed
car1.accelerate
p car1.speed
puts "----"

bike1.ring_bell
car1.honk_horn
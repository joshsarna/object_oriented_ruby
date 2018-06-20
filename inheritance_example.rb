class Vehicle

  attr_reader :speed

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  
  def ring_bell
    puts "Ring ring!"
  end

end

bike = Bike.new
car = Car.new

p bike.speed
bike.accelerate
p bike.speed
puts "----"
p car.speed
car.accelerate
p car.speed
puts "----"

bike.ring_bell
car.honk_horn
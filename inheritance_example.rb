class Vehicle

  attr_reader :speed

  def initialize(_input_options)
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

  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model= input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  
  def initialize(input_options)
    super
    @gear_speed = input_options[:gear_speed]
    @type = input_options[:type]
    @weight= input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end

end

bike1 = Bike.new(gear_speed: 7, type: "Schwinn", weight: 20)
car1 = Car.new(fuel: "electric", make: "Tesla", model: "S")

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

p bike1
p car1
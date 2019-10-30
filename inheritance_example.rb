class Vehicle
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


# driver code
bike = Bike.new

bike.brake
bike.accelerate
bike.ring_bell
# should not work
# bike.honk_horn

car = Car.new

car.brake
car.accelerate
car.honk_horn
# should not work
# car.ring_bell

class Vehicle
  def self.gas_mileage(gas, miles)
    puts "#{miles/gas} miles per gas"
  end
  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.car_model}!"
  end

  def spary_paint(color)
    self.color = color
    puts "Now, your car is color #{color}"
  end
end



class MyCar < Vehicle

  NGAS = 4
  attr_accessor :color, :car_model, :speed
  attr_reader :year
  def initialize(year,color,car_model)
    @year = year
    @color = color
    @car_model = car_model
    @speed = 0
  end


  def driving(action, number)
    if action == "speedup"
    self.speed = @speed + number
    elsif action == "brake"
    self.speed = @speed - number
    else
    self.speed = 0
    end
  end
end

class MyTruck < Vehicle
  NGAS = 2
end






class Vehicle
  @@vechile_number = 0

  def initialize
    @@vechile_number +=1
  end

  def self.vechile_number
    puts "Vechile plus, #{@@vechile_number}"
  end

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

  def carage
    puts "your car is #{cal_age}"
  end

  private
  def cal_age
    Time.now.year - self.year
  end
end

module Carheight
  def car_height?(meter)
    meter < 3000 ? true:false
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
    super()
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
  include Carheight
  NGAS = 2
end


# Car1 = MyCar.new(1982,"black","fast")
# Car1.carage
Car2 = MyTruck.new()
puts Car2.car_height?(4000)

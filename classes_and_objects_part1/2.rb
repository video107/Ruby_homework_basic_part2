class MyCar

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




Car1 = MyCar.new(1982,"red","fast")
Car2 = MyCar.new(1998,"blue","slow")


puts Car1.year
puts Car1.color
puts Car1.car_model
puts Car1.speed
Car1.color = "black"
puts Car1.color
Car1.driving("speedup",20)
Car2.driving("brake",40)
puts Car1.speed

puts Car2.year
puts Car2.color
puts Car2.car_model
puts Car2.speed
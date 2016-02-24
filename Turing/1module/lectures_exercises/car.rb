class Car
  attr_accessor :color  # => nil

  def horn
    return "BEEEEEP!"  # => "BEEEEEP!"
  end                  # => :horn

  def drive(distance)
    return "I'm driving #{distance} miles"  # => "I'm driving 12 miles"
  end                                       # => :drive

  def report_color
    return "I am #{color}"  # => "I am purple"
  end                       # => :report_color

  def wheel_count(number)
    "This sweet ride is sitting on #{number} wheels."  # => "This sweet ride is sitting on 18 wheels."
  end                                                  # => :wheel_count

end  # => :wheel_count

my_car = Car.new          # => #<Car:0x007fbf7b837e20>
puts my_car.horn          # => nil
puts my_car.drive(12)     # => nil
my_car.color = "purple"   # => "purple"
puts my_car.report_color  # => nil
my_car.wheel_count(18)    # => "This sweet ride is sitting on 18 wheels."

# >> BEEEEEP!
# >> I'm driving 12 miles
# >> I am purple

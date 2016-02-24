module HasEngine
  def start
    puts "Engine On"
  end
  def stop
    puts "Engine Stop"
  end
end

module HasAC
  def ac_on
    puts "AC is on"
  end

  def ac_off
    puts "AC is off"
  end
end

  class Subaru
    include HasEngine
    include HasAC

    def drive
      puts "Back Wheels go!"
    end
  end

  class Jeep
    include HasEngine
    include HasAC

    def drive
      puts "All Wheels go!"
    end
  end

subie = Subaru.new
jeep = Jeep.new
subie.start
subie.stop
subie.ac_on
subie.ac_off
jeep.start
jeep.stop
jeep.ac_on
jeep.ac_off

# module BasicSpell
#   def accio(thing)
#     puts "You got #{thing}"
#   end
# end
#
#   class BrokenWand
#     include BasicSpell
#
#     def powerful_spell
#       puts "You just broke your wand"
#     end
#   end
#
#   class ElderWand
#     include BasicSpell
#
#     def powerful_spell
#       puts "BANG"
#     end
#   end
#
# broken = BrokenWand.new
# elder = ElderWand.new
# broken.accio("Pizza")
# broken.powerful_spell
# elder.accio("Taylor Swift")
# elder.powerful_spell

# module Pythagorean
#   def self.find_c(a,b)
#     Math.sqrt((a**2) + (b**2))
#   end
#
#   def self.find_b(a,c)
#     Math.sqrt((c**2) - (a**2))
#   end
#
#   def self.find_a(b,c)
#     Math.sqrt((c**2) - (b**2))
#   end
#
# end
#
# module Thing
#   def self.stars(string)
#     "** #{string} **"
#   end
# end
# puts Thing.stars("OMG SHOES")
# puts Pythagorean.find_c(3,4)
# puts Pythagorean.find_b(3,5)
# puts Pythagorean.find_a(4,5)

# module RWD
#   class Car
#     def start
#       puts "Engine on!"
#     end
#
#     def drive
#       puts "Back wheels go!"
#     end
#   end
# end
#
# module AWD
#   class Car
#     def start
#       puts "Engine on!"
#     end
#
#     def drive
#       puts "All wheels go!"
#     end
#   end
# end
#
# awd_car = AWD::Car.new
# awd_car.start
# awd_car.drive
# rwd_car = RWD::Car.new
# rwd_car.start
# rwd_car.drive

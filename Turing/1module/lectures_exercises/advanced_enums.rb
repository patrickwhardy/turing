require 'pry'


# !!!REMEMBER!!! whatever block returns becomes collector next time around
string = "tthing"

result = string.chars.reduce(Hash.new(0)) do |hash, letter|
  hash[letter] +=1
  hash
end
puts result
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array.reduce([]) do |new_array, i|
#   new_array << i if i.even?
#   new_array
# end

# string = "puppies intense zebra zephyr amoeba"
# message = string.split.reduce('') do |result, word|
#   result = result + word[0]
# end
# puts message
# collection.reduce(start) do |collector, item|
#   "do the thing"
# end
#
# array = [1,2,3,4,5]
# array.reduce(0) do |sum, num|
#   #0 is starting sum
#   #num is each item in array
#   sum += num
#   #block re-assigns sum
# end
#last return of block is final sum


# array = ["aardvark", "art", "apple", "beets", "beach",
#   "lemon", "love", "lamb", "lobotomy", "zephyr"]
#
# result = array.group_by do |string|
#   string[0]
# end
# puts result


# array = ["dog", "fish", "corgi"]
#
# result = array.group_by do |string|
#   string.length
# end
# puts result
#enumerables so far pull things out of a collection based on parameters
#group by - takes an array, with that array creates a hash,
#where key is return value of block and
#value is what we're currently examining in the enumerable

# students = ["Hannah",
#             "Penelope",
#             "Rabastan",
#             "Neville",
#             "Tonks",
#             "Seamus"]
# houses = ["Hufflepuff",
#           "Ravenclaw",
#           "Slytherin",
#           "Griffyndor",
#           "Hufflepuff",
#           "Griffyndor"]
#this returns hashes where student is key and house is value
#wont work the other way b/c when key repeats,
#key/value pair gets overwritten
#p students.zip(houses).to_h

#can pass in any number of args

# numbers = [1,2,3,4,5,6]
# p students.zip(houses, numbers)


# require 'pry'
# class Stuff
#   def initialize
#     @chocolate = ["Ritual",
#                   "Chuao",
#                   "Scharffen Berger"]
#
#     @pb = ["Peter Pan",
#           "Skippy",
#           "Cookie Butter"]
#   end
#
# def zip_it
#     @chocolate.zip(@pb).each do |combo|
#     puts  "You got you #{combo[0]} in my #{combo[1]}"
#   end
# end
#
# end
#
# @stuff = Stuff.new
# @stuff.zip_it

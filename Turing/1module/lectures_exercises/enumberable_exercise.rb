array = [2, 47, 85, 1]
#command i runs code
def max(array)
  result = array.first

  array.each do |num|
    if num > result
      result = num
    end
  end
  puts result
end

#also achieved with array.max
"a" < "b" == true
#less than/greater than in strings = alphabetical order

class Person
  attr_reader :name, :age
 def intialize(name, age)
   @name = name
   @age = age
 end

end

people = []

people << Person.new("Bob", 24)
people << Person.new("Tom", 32)
people << Person.new("John", 10000)

def max_by(people)
  result = people.first
  people.each do |person|
    if person.age > result.age
      result = person
    end
  end
end

#there is max_by enumerable!
people.max_by do |person|
  person.age
end(#can add .age here)

# can also use min_by in same way
# min_by name returns person object "Bob"

#return oldest member and fist alphabetically
class Member
def initialize(name, age)
  @name = name
  @age = age
  one_direction = []
end

harry = Member.new("Harry", 22)
one_direction << harry

one_direction.max_by do |member|
  member.age
end

one_direction.min_by do |member|
  member.age
end
end

#sort returns a sorted array
array = [4,42,5423423,1]
array.sort == [1,4,42,bignumber]
one_direction.sort_by {|person| person.age}
#.inspect returns "developer view"
#shows if its array hash etc

array = [1,1,1,1,1]
def all?(array)
  result = true
  array.each do |item|
    result = false if item != 1
  end
  result
end

#all? = are all the things here arg?

#actual syntax
result = array.all? do |item|
  item == 1
end
#returns true

#none? does opposite

result = array.none? do |item|
  item == 2
end #returns true
#can ask about attributes of the object
array.all? do |name|
  name.length == 3
end

#any? and one? find single instances?
#any? = is there one or more?
#one? = is there only one?

#dont set variable outside of an enumerable
#and modify it inside the enumerable
#ie index = 0 , each do index += 1...

#alternatively
musicians.each_with_index do |musician, index|
  puts "#{index} - #{musician}"
end
#gives enumerable access to index

message = @message
until message.slice == nil do |message|
  a_char = message.slice![0]
  map_index = @char_map.index(a_char)
  a_char = @char_map(map_index + a + a_offset)
  if message.slice == nil
    break
  end
  b_char = message.slice![0]
  map_index = @char_map.index(b_char)
  a_char = @char_map(map_index + b + b_offset)
end

make array of rotation [a, b, c, d]
set index to 0
new encrypted char array
message.each_char do |char|
  result << char.encypted[index of rotation array]
  index +=1 index
  index = 0 if index >3
end

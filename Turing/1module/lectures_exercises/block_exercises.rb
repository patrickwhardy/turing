def internally_screaming
  people = ["Taylor Swift", "Carly Rae Jeppsen", "Zara Larssen"]

  people.map do |person|
    person.upcase
  end
end

puts internally_screaming

def even_numbers
  numbers = [1, 2, 3, 4, 5]

  numbers.map do |n|
    if n.even? = true
     return n
  end
end

words.find do |word|
  word.length > 3
end

def thing
 number = [34, 42, 50, 55, 8938493]
 number.find_all do |i|
    i > 40
    end
end

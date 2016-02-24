require "pry"

#array = [1, 2, 3, 4]
#new_array = []
#array.each do |n|
  #new_array << n * 2
  #if n.even?
   # puts n
  #end
  #end

  array = ["Taylor Swift", "Salena Gomez", "Justin Bieber"]
  
  # array.each do |name|
    # puts name.split.last
  # end
  
   array.each do |name|
     binding.pry
     puts name.split.first[0] + name.split.last[0]
   end
  
  # array.each do |name|
  #   puts name.split.last
  #   puts name.split.last.length
  # end
  
 #  puts array.join.length
  
  
  
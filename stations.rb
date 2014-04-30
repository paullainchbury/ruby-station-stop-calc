l = ["8th on L", "6th", "Union Square", "3rd", "1st"]
m = ["Grand Central", "33rd", "28th on 6", "23rd on 6", "Union Square", "Astor Place"]
n = ["Times Square", "34th", "28th on N", "23rd on N", "Union Square", "8th on N"]

#### Where are you going from? Works out the line and the index


puts `clear`
puts "Where are you travelling from?"
from = gets.chomp


while !(l.include?(from) || m.include?(from) || n.include?(from))  do
   puts("Invalid station. Try again: " )
   from = gets.chomp
end

if l.include?(from)
  from_index = l.index(from)
  from_line = l
elsif m.include?(from)
  from_index = m.index(from)
  from_line = m
elsif n.include?(from)
  from_index = n.index(from)
  from_line = n
else 
  puts "That's not a valid station"
end

#### Where are you going to? Works out the line and the index

puts "Where are you travelling to?"
to = gets.chomp

while !(l.include?(to) || m.include?(to) || n.include?(to))  do
   puts("Invalid station. Try again: " )
   to = gets.chomp P
end

if l.include?(to)
  to_index = l.index(to)
  to_line = l
elsif m.include?(to)
  to_index = m.index(to)
  to_line = m
elsif n.include?(to)
  to_index = n.index(to)
  to_line = n
else
  puts "That's not a valid station"
end


#### Is you journey starting and ending on the same line?

if from_line == to_line
 if (from_index-to_index) == 0
  puts "Well that's not ANY stops is it? You should probably walk, fatso!"
  else
    puts "ok, that's #{(from_index-to_index).abs} stops"
  end
else #### What if it's not starting on the same line?

  puts "OK, that's #{((from_index-(from_line.index((from_line & to_line).pop))).abs)+((to_index-(to_line.index((from_line & to_line).pop))).abs)} stops."

end
total = 0
count = 0

loop do
  puts "Enter a number. When you're finished just hit 'enter'."
  number = gets.chomp
  if number == ""
    break
  elsif number == number.to_i.to_s || number == number.to_f.to_s
    puts "you know your numbers, woohoo!"
    total +=  number.to_f
    count += 1
  else
    puts "Not a number..."
  end
end
average = total/count
puts "Your total is: #{total}"
puts "The average of those numbers is #{average}"

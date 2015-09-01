total = 0
count = 0
input_type = 0
words = ""

loop do
  puts "Enter a number or a word. When you're finished just hit 'enter'."
  input_str = gets.chomp
  if input_str == "" then
    break
  elsif input_str == input_str.to_i.to_s || input_str == input_str.to_f.to_s
    if input_type == 0 then input_type = 1 end
    if input_type == 1 then
      puts "you know your numbers, woohoo!"
      total +=  input_str.to_f
      count += 1
    else
      puts "Sorry, try again."
      exit 1
    end
  else
    if input_type == 0 then input_type = 2 end
    if input_type == 2 then
      words = words + input_str
    else
      puts "Sorry, try again."
      exit 1
    end
  end
end

if input_type == 1 then
  average = total/count
  puts "Your total is: #{total}"
  puts "The average of those numbers is #{average}"
else
  puts "Your words stuck together are: #{words}"
end

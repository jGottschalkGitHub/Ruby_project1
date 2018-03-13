put "enter your name"
name = gets.chomp
first_and_last = false
puts "What is your full name?"
name = gets.chomp
if name.index(" ")!=nil
  firstname = name.split(" ")[0]
  first_and_last = true
  lastname = name.split(" ")[1]
end
if first_and_last
  puts "Your firstname is #{firstname}"
  puts "Your lastname is #{lastname}"
else 
  puts "Your name is #{name}"
end
puts "What is your street address?"
street_info = gets.chomp
street_array = street_info.split(" ")
street_details = street_array[0]
street_number =""
block_number =""
street_details.split("").each { |char|
  
  if char >= "0" and char <= "9"
    
    street_number+=char
  else 
    block_number = char + "-Block"
  end
}
puts street_number
puts block_number
puts street_array[1]
if street_array[1] and street_array[1].length===1
  block_number = street_array[1]
end
puts "Your street number is #{street_number}"
puts "Your block number is #{block_number}"
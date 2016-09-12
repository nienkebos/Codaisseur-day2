def question(msg)
  puts msg
  gets.chomp
end

name = question("What is your name?")
age = question("How old are you?").to_i
gender = question("What's your gender (m/f)?")

if gender == "m"
  msg_gender = "Mr."
else
  msg_gender = "Ms."
end

year = 2016 - age + 100


puts "Goodmorning #{msg_gender} #{name}!"
puts "You will be 100 in the year: #{year}"

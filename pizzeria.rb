def question (msg)
  puts msg
  gets.chomp
end

name = question("What is your first name?")
puts "Hi #{name}!"

def pizza_menu
  [
  {number: 1, name: "mozzarella", price: 9},
  {number: 2, name: "hawaii", price: 14},
  {number: 3, name: "prosciutto", price: 15},
  {number: 4, name: "tonno", price: 12}
  ]
end

puts "Pizza's on the menu:"

# for menu in pizza_menu
#   puts "#{menu[:number]} #{menu[:name]}, #{menu[:price]} euro's"
# end

#Kan ook met .each
pizza_menu.each do |menu|
  puts "#{menu[:number]} #{menu[:name]}, #{menu[:price]} euro's"
end

pizza_choice = question("Which pizza do you want (type number)?").to_i
order = question("How many pizza's do you want to order?").to_f
order_integer = order.to_i

# more = question('Would you like to order another pizza (y/n)?')


if order > 1
  order_name = "pizza's"
else
  order_name = "pizza"
end

pizza_name = pizza_menu[pizza_choice -1][:name]
total_amount = order * pizza_menu[pizza_choice -1][:price].to_f

def display_message(pizza_amount, pizza, price, message, order_name)
  puts "Thank you for your order. You ordered #{pizza_amount} #{pizza} #{order_name}."
  puts "The price of your order is #{price}#{message}"
end

if total_amount > 20
  total_amount = total_amount * 0.9
  message = ", including a 10% discount."
elsif total_amount < 10
  total_amount = total_amount + 2.5
  message = ", including delivery costs."
else
  message = "."
end

display_message(order_integer, pizza_name, total_amount, message, order_name)

pizza_cost = 9
def get_order(msg)
  puts msg
  gets.chomp.to_i
end
amount = get_order("How many pizzas do you want?")

total_amount = pizza_cost * amount
delivery_costs = 5
if total_amount < 10.50
  extra_costs = total_amount + delivery_costs
  puts "You ordered #{amount} pizza(s). This costs #{extra_costs}."
else
  puts "You ordered #{amount} pizza(s). This costs #{total_amount}."
end

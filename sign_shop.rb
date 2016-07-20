def total_cost(colors, length, width, height=nil)

  #change these variables according to your price preferences
  price_per_square_foot =  15.0
  tax = 1.15
  color_limit = 2
  under_limit_cost = 10.0
  over_limit_cost = 15.0

  #Pass in height of room you wish to paint four walls in
  area = (width*length)
  area = (length*height*2.0) + (length*height*2.0) if height != nil

  #calculator
  size_costs = area * price_per_square_foot
  color_costs = colors <= color_limit ? colors*under_limit_cost : colors*over_limit_cost
  ((size_costs + color_costs) * tax).round(2)

end

puts total_cost(2,10,10)
puts total_cost(2,10,10,4)

def cheese_price(cheese, total)
  if cheese.downcase == "mozzarella"
    "The price is $1.00"
    total+=1
  elsif cheese.downcase == "goat cheese"
    "The price is $1.50"
    total+=1.5
  else
    "No additional charge"
  end
  total
end

def sauce_price(sauce, total)
  if sauce.downcase == "tomato"
    "The price is $0.50"
    total+=0.50
  elsif sauce.downcase == "pesto"
    "The price is $0.75"
    total+= 0.75
  else
    "No additional charge"
  end
  total
end

def topping_price(topping, total)
  topping.each do |topping|
  if topping.downcase == "olives"
    "The price is $0.25"
    total+=0.25
  elsif topping.downcase == "mushrooms"
    "The price is $0.35"
    total+= 0.35
  elsif topping.downcase == "onions"
    total+= 0.40
  else
    "No additional charge"
  end
end
  total
end

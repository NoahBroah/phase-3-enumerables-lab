require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  name_array = spicy_foods.map {|name| name[:name]}
end
get_names(spicy_foods)

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  heat_level = spicy_foods.select {|spice| spice[:heat_level] > 5}
end
spiciest_foods spicy_foods

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  heat_lvl = spicy_foods.map do |array|
    spice = ("🌶" * "#{array[:heat_level]}".to_i)
    "#{array[:name]} (#{array[:cuisine]}) | Heat Level: #{spice}"
  end
  puts heat_lvl
end
print_spicy_foods spicy_foods
# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  food_hash = spicy_foods.find { |x| x[:cuisine] == cuisine}
end


# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  heat_lvl_hash = spicy_foods.sort_by {|x| x[:heat_level]}
end
sort_by_heat spicy_foods
# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  heat_level = spicy_foods.select {|spice| spice[:heat_level] > 5}
  heat_lvl = heat_level.map do |array|
    spice = ("🌶" * "#{array[:heat_level]}".to_i)
    puts "#{array[:name]} (#{array[:cuisine]}) | Heat Level: #{spice}"
  end
end
print_spiciest_foods spicy_foods

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total_heat = spicy_foods.sum { |h| h[:heat_level]}
  avg_heat = (total_heat/spicy_foods.length)
end
average_heat_level spicy_foods
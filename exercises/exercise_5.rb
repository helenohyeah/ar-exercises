require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

# Your code goes here ...

total_revenue = Store.sum("annual_revenue")
avg_revenue = Store.average("annual_revenue")

# puts "Total Revenue: $#{total_revenue}"
# puts "Average Revenue: $#{avg_revenue}"

# puts "Stores generating > $1M: #{Store.where(" annual_revenue > ? ", 1000000).size}"
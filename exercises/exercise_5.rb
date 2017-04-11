require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total revenue for all stores: #{Store.sum :annual_revenue}"
puts "Average revenue for all stores: #{Store.average :annual_revenue}"
stores_over_a_mil = Store.where("annual_revenue >= ?", 1000000).size
puts "Number of stores generating more than $1,000,000: #{stores_over_a_mil}"
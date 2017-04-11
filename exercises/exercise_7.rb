require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Please enter a store name > "
store_name = gets.chomp

new_store = Store.create name: store_name

puts "ERRORS ___________-----____-----___--"
puts "Error count is #{new_store.errors.size}"
new_store.errors.full_messages.each do |error|
  puts "#{error}"
end
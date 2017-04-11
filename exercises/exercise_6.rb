require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

store1 = Store.find 1
store2 = Store.find 2

# Your code goes here ...
store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
store1.employees.create(first_name: "Brenton", last_name: "Virili", hourly_rate: 30)
store1.employees.create(first_name: "Michelle", last_name: "Holswich", hourly_rate: 20)
store1.employees.create(first_name: "Don", last_name: "Paton", hourly_rate: 40)
store2.employees.create(first_name: "Greg", last_name: "James", hourly_rate: 25)
store2.employees.create(first_name: "Dave", last_name: "Pointon", hourly_rate: 55)
store2.employees.create(first_name: "Ian", last_name: "Hockings", hourly_rate: 35)
store2.employees.create(first_name: "Brooke", last_name: "Silt", hourly_rate: 30)
store2.employees.create(first_name: "Lauren", last_name: "Adams", hourly_rate: 30)
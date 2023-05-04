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
puts "Plis enter store name like now"
print "> "

input_store_name = $stdin.gets.chomp

new_store = Store.create(name: input_store_name, annual_revenue: 40, mens_apparel: true, womens_apparel: false)

if new_store.valid?
  puts "Successfully created/updated the store"
else
  puts "Error occured while creating/updating the store: "
  puts new_store.errors.full_messages
end

@all_stores = Store.all
@all_stores.reload

@all_stores.each do |store|
  puts "the store name is #{store.name}"
end

require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# find() is usually used to retrieve a row by ID
# find_by is used as a helper when you're searching for information within a column, and it maps to such with naming conventions.
# ie. find_by(id: 1)
@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.update(name: 'Victoria')

@store1.reload # refresh the object from the database to reflect the change
puts @store1.name
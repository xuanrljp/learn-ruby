#!/usr/bin/ruby

#Init
emptyArr = []
puts emptyArr.length

intArr = [1, 2, 3]
puts intArr.length

strArr = %w(cat dog pig)
puts strArr.length

#Traversal
strArr.each { |animal| puts animal }

strArr.each_with_index do |animal, i|
  puts "#{i+1}: #{animal}"
end

#Map
p strArr.map {|item| "my" + item}
p strArr

numbers = ["68", "65", "6C", "6C", "6F"]
p numbers.map {|item| item.to_i(16) }
p numbers

p numbers.map! {|item| item.to_i(16) }
p numbers

#Reduce
numbers2 = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
p numbers2.reduce{ | sum, item | sum + item }
p numbers2.reduce{ | sum, item | 
  break sum if item == 5
  sum + item 
}
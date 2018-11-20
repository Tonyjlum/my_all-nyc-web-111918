require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i +=1
  end

  block_return_values.each {|el| return false if el == false}
  true
end

def binary_search(array, number)
  count = 0
  until array.size == 1
    middle = array.size / 2
    if number == array[middle]
      return number
    elsif number < array[middle]
      array = array.select {|element| element < array[middle]}
    else
      array = array.select {|element| element > array[middle]}
    end
    count += 1
  end
  puts "your number is #{array.first} and was found in #{count} tries, the array is #{array}"
end

 binary_search([1,2,3,4,5,6,7,8,9,10], 10)

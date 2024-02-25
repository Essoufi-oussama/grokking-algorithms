def binary_search(list, item)
  low = 0
  high = list.size

  while low <= high
    middle = (low + high) / 2
    guess = list[middle]
    if guess == item
      return guess
    elsif guess > item
      high = middle - 1
    else
      low = middle + 1
    end
  end
end

my_list = ["a", "b", "c", "d", "e"]
p binary_search(my_list, "b")

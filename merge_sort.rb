# sort left half
# sort right half
# then merge the two halves
# if tthere is only 1 element stop

def merge_sort(arr)
  if arr.length <= 1
    return arr
  end

  middle = arr.length / 2
  left = merge_sort(arr[0...middle])
  right = merge_sort(arr[middle...arr.length])

  merge(left, right)
end

def merge(left_arr, right_arr)
    sorted_array = []
    left_index = 0
    right_index = 0

    while left_index < left_arr.length && right_index < right_arr.length
        if left_arr[left_index] < right_arr[right_index]
          sorted_array << left_arr[left_index]
          left_index += 1
        else
          sorted_array << right_arr[right_index]
          right_index += 1
        end
    end

    sorted_array.concat(left_arr[left_index..]) if left_index < left_arr.length
    sorted_array.concat(right_arr[right_index..]) if right_index < right_arr.length

    sorted_array
end

arr = [0,7,9,39, 35, 40,1, 30]
p merge_sort(arr)
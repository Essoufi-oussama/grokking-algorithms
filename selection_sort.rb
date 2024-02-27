def find_samllest(arr)
    smallest = arr[0]
    smallest_index = 0
    (1...arr.size).each do |i|
        if arr[i] < smallest 
            smallest = arr[i]
            smallest_index = i
        end
    end
    smallest_index
end

def selection_sort(arr)
    new_array = []
    arr.size.times do
        smallest = find_samllest(arr)
        new_array.push(arr.delete_at(smallest))
    end
    new_array
end

p selection_sort([5, 3, 6, 2, 10])
p selection_sort([-4, 1, 0, 2, -9])
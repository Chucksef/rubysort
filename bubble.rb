array_to_sort = [108,4,15,42,8,23,16]

def bubble_sort(arr)
    needs_checking = true
    while(needs_checking)
        needs_checking = false
        i = 0
        while i < arr.length-1
            if arr[i] > arr[i+1]
                val = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = val
                needs_checking = true
            end
            i += 1
        end
    end
    arr
end

puts bubble_sort(array_to_sort)
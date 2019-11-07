to_sort = [108,4,15,42,8,23,16]

def bubble_sort(arr)
    needs_checking = true
    while(needs_checking)
        needs_checking = false
        i = 0
        while i < arr.length-1
            puts "Checking if #{arr[i]} > #{arr[i+1]}"
            if arr[i] > arr[i+1]
                val1 = arr[i]
                val2 = arr[i+1]
                puts "It is! Switching them!"
                arr[i] = val2
                arr[i+1] = val1
                puts "Re-ordered array: #{arr.to_s}"
                needs_checking = true
            end
            i += 1
        end
    end
    arr
end

puts bubble_sort(to_sort)
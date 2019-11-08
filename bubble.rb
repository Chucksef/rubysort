array_to_sort = [108,4,15,42,8,23,16]
other_array_to_sort = ["These","Truths","Hurt","A","Lot","Al"]

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

puts "Bubble Sort Method: #{bubble_sort(array_to_sort).to_s}"

def bubble_sort_by(arr)
    needs_checking = true
    while(needs_checking)
        needs_checking = false
        i = 0
        while i < arr.length-1
            compare = yield(arr[i], arr[i + 1])
            if compare > 0
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

puts "Block Method: #{bubble_sort_by(other_array_to_sort){|x,y| y.length - x.length }.to_s}"
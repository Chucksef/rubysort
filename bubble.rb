module Enumerable
    nums_array = [108,4,15,42,8,23,16]
    words_array = ["These","Truths","Hurt","A","Lot","Al"]

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

    # puts "Bubble Sort Method: #{bubble_sort(nums_array).to_s}"

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

    # puts "Block Method: #{bubble_sort_by(words_array){|x,y| y.length - x.length }.to_s}"

    def my_each()
        for e in self
            yield e
        end
    end

    # my_each(nums_array) {|x| puts x}

    def my_each_with_index(arr)
        i = 0
        while i < arr.length
            yield(arr[i], i)
            i += 1
        end
    end

    # my_each_with_index(nums_array) do |x,y|
    #     puts "#{y}: #{x}"
    # end

    def my_select(arr)
        i = 0
        return_array = []
        while i< arr.length
            keep = yield(arr[i])
            if(keep)
                return_array.push(arr[i])
            end
            i += 1
        end
        puts return_array
    end

    # my_select(nums_array) do |x|
    #     x.even?
    # end

    def my_map(proc)
        return_array = []
        self.my_each do |item|
            return_array << proc.call(item)
        end
        return_array
    end

    prox = Proc.new {|x| x+1 }
    test_array = nums_array.my_map(prox)

    puts test_array.to_s
end
def bubble_short(array_of_items)
    loop do
        swap = false
        # looping the array and make swaps possitioning wherever it needs
        for i in (1 ..array_of_items.length-1) do
            if array_of_items[i - 1] > array_of_items[i]
                array_of_items[i -1], array_of_items[i] = array_of_items[i], array_of_items[i -1]
                swap = true
            end
        end
        # if swap equals false that means that the array is shroted and no swaps were made so we break
        if swap == false
            break
        end
    end

    # returning the shorted array
    return array_of_items
end

p bubble_short([1,21,1,4,67,1,0,5,3,8,6,9,12,6,85,3,2,0])

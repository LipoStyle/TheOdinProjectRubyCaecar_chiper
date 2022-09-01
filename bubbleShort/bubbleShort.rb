#declaring the array that we will sort
test = [4,3,78,2,0,2]
# print an unsorted array
p test
# declaring the method that we will use
def bubble_sort(arra_to_be_sorted)
  # here we loop the array until it its sorted
  loop do
    # we set the condtion of swaps t o fasle so that means that the array is sorted and thats our end condition
    swap = false
    # now we loop our array  and mayke comparisons to make it sorted
    for i in 1..arra_to_be_sorted.length-1 do
      if arra_to_be_sorted[i] < arra_to_be_sorted[i-1]
        temp = arra_to_be_sorted[i]
        arra_to_be_sorted[i] = arra_to_be_sorted[i-1]
        arra_to_be_sorted[i-1] = temp
        # and if we make a change we make the swap variale to true so the array is not yet sorted
        swap = true
      end
    end
    if swap == false
      break
  end
end
end
# here we call our method
  bubble_sort(test)
# and here we test the outcome
p test
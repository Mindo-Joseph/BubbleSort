#Method definition
def bubble_sort(array) 
   swapped = true
   n = array.length-1
   while swapped do
       i = 0
       swapped = false
       while i < n do
           if array[i] > array[i+1]
            array[i],array[i+1] = array[i+1],array[i]
            swapped = true
           end
           i+=1
       end
   end
   array
# Method definition
def bubblesort(array)
  swapped = true
  n = array.length - 1
  while swapped
    i = 0
    swapped = false
    while i < n
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
      i += 1
    end
  end
  array
end

def bubble_sort_by(array)
  swapped = true
  n = array.length - 1
  while swapped
    i = 0
    swapped = false
    while i < n
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
      i += 1
    end
  end
  array
end

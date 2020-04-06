#Method definition
def bubble_sort(array)
    # Get the length of the array
    n = array.length
    # If the size is equal to 1 return the array as it is already sorted
    if n == 1
        array
    # If the size is 0 return a message saying the array is empty
    elsif n == 0
        return "Array is empty"
        
    else
        # If the array has more than 1 element perform the following
        # We define an loop that breaks when the whole array is sorted
        loop { 
            # We create a sorted variable and initialize it to false
            sorted = false
            # Itertate through the loop n-1 times
            (n-1).times { |i|
                # If the current array element (array[i]) is greater than the next one (array[i+1])
                if array[i] > array[i+1]
                    # swap the values
                    array[i],array[i+1] = array[i+1],array[i]
                    # update the sorted variable to true
                    sorted = true
                else
                    # Otherwise if it is less than or equal to the next leave them as they are since they are sorted
                    array[i] <= array[i+1]
                        array[i], array[i+1] = array[i], array[i+1]
                    
                
                    
                end


            }
            # Break out of the loop if everything evaluates to true
            break if !sorted
        }
        # Return the modified array now sorted
        array      
    end
    
end
            

def bubble_sort_by(array)
    # Get the array size
    n = array.size
    # If the size is 1 return the array as it is already sorted
    if n == 1
        array
    # If the size of the array is 0 return a string that tells the user the array is empty   
    elsif n == 0
        "Array is empty"
        
    else
        
        loop {
            # Create a sorted variable and initialize it to false
            sorted = false
            # Iterate through the given array n-1 times
            (n-1).times { |i|
                # Break out of the method and calculate the difference between the words through the block provided 
                # If their difference is greater than 0 i.e left word is greater in length compared to word on the right...
                if yield(array[i] , array[i+1]) > 0
                    # Swap the two words
                    array[i] , array[i+1] = array[i+1],array[i]
                    # Update sorted variable to be true
                    sorted = true
                
                end 
                    
            }
            # Break out of the loop if sorted is true
            break if !sorted
            

        }
        # Return the array, now sorted
        array
    end
end

# Examples
sort_numbers = bubble_sort([1,0,21,-8,5])
sort_words= bubble_sort_by(["hi","hello","hey","is","somelog","a","b","you"]) { |left,right| left.length - right.length} 

p sort_words
p sort_numbers
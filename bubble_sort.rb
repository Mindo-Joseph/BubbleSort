def bubble_sort(array)
    n = array.length

    
    if n == 1
        array
        
    elsif n == 0
        puts "Array is empty"
        
    else
        loop { 

            sorted = false

            (n-1).times { |i|
                if array[i] > array[i+1]
                    array[i],array[i+1] = array[i+1],array[i]
                    sorted = true
                else
                    array[i] <= array[i+1]
                        array[i], array[i+1] = array[i], array[i+1]
                    
                
                    
                end


            }
            break if !sorted


        }
        array
        
            
    end
    
end
            

sorted = bubble_sort([])

p sorted
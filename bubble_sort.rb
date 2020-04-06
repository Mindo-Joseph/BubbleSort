def bubble_sort(array)
    n = array.length

    
    if n == 1
        array
        
    elsif n == 0
        return "Array is empty"
        
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
            

def bubble_sort_by(array)
    n = array.size
    if n == 1
        array
        
    elsif n == 0
        "Array is empty"
        
    else
        
        loop {
            sorted = false
            (n-1).times { |i|
                if yield(array[i] , array[i+1]) > 0
                    array[i] , array[i+1] = array[i+1],array[i]
                    sorted = true

                else yield(array[i] , array[i+1]) <= 0
                    array[i] , array[i+1] = array[i],array[i+1]
                    sorted = true
                end     
            }
            break if !sorted

        }
        
        array
    end
end
c = bubble_sort_by(["hi","hello","hey","is","somelog","a"]) { |left,right| left.length - right.length} 
p c
    
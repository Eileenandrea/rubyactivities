var = [34,15,88,2];
var2 = [34,-345,-1,100]

def smallest_int(arr)
    smallest = arr[0];
    arr.each do |n| 
        if n < smallest
            smallest = n
        else
            smallest = smallest;
        end  
    end
    return smallest
end

smallest_integer = smallest_int(var2)
puts smallest_integer
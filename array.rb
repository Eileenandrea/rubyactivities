arr = [1,3,5,7,9,11];
number = 11;

puts "#{arr.include?number}"

#2
puts "please input a number"
number = gets.to_i

if (number >= 0 && number <= 50)
    puts "number is between 0-50"
elsif(number > 50 && number <=100)
    puts "number is between 51 and 100"
elsif(number>100)
    puts "number is above 100"
else
    puts "invalid number must be positive number"
end

#3
i=0
while(true)
    puts "enter stop if you want to stop counting"
    puts "do you want to stop counting? TYPE 'STOP' to stop counting "
    c = gets;
    puts "counting 1-5sec"
    while c != 'STOP'
        sleep 1;
        i+=1
        puts "#{i}"
        if(i%5 ==0)
            puts "do you want to stop counting? TYPE 'STOP' to stop counting "
            c = gets
            break if c.chomp == 'STOP'
            puts "counting #{i+1}-#{i+5}  "
        end
    end
    break if c.chomp == 'STOP'

    puts "invalid Syntax"
end

#4
arr2 = [6,3,1,8,4,2,10,65,102]

even = arr2.select{|n| n%2 == 0}

puts "#{even}"
class People

    def initialize(first_name,last_name,nationality)
        @first_name= first_name
        @last_name = last_name
        @nationality = nationality
    end

    def introduce 
        puts "Hello my name is #{@first_name} #{@last_name}"
    end

end

class American < People


    def introduce 
        puts "Hello my name is #{@first_name} #{@last_name} and I am #{(@nationality[0].downcase =~ /\A[aeiou]/)==nil ? 'a' : 'an'} #{@nationality}"
    end
end

class Filipino < People


    def introduce 
        puts "Kamusta ako si #{@first_name} #{@last_name} at ako ay isang #{@nationality}"
    end
end

class Korean < People


    def introduce 
        puts "annyeong no ireumeun #{@first_name} #{@last_name} geurigo naneun #{@nationality}"
    end
end

steve = American.new('steve','jobs','American')
juan = Filipino.new('Juan', "Dela Cruz",'Filipino')
jennie = Korean.new('Jennie', 'Kim','Korean')

puts steve.introduce
puts juan.introduce
puts jennie.introduce
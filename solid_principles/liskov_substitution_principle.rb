class Person
    def initialize(name)
        @name = name
    end
    def greet
        raise "please generate your own greet"
    end
end

class Filipino < Person
    def greet
        "Mangandang Umaga #{@name}"
    end
end
class Korean < Person
    def greet
        "annyeong haseyo #{@name}"
    end
end

eileen = Filipino.new("eileen")
puts eileen.greet

jennie = Korean.new("jennie")
puts jennie.greet
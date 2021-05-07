class MathOP

    def operation(operand)
        operand.operation
    end
end

class Addition
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end
    def operation
        @num1 + @num2
    end
end

class Subtraction
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end
    def operation
        @num1 - @num2
    end
end

class Multiplication
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end
    def operation
        @num1 * @num2
    end
end
class Division
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end
    def operation
        @num1 / @num2
    end
end
math = MathOP.new
addition = Addition.new(5,7)
subtraction = Subtraction.new(7,5)
multiplication = Multiplication.new(7,5)
division = Division.new(30,5)

puts math.operation(addition)
puts math.operation(subtraction)
puts math.operation(multiplication)
puts math.operation(division)
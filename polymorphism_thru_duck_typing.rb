class MathOP
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end
    def operation(operand)
        operand.operation(@num1,@num2)
    end
end

class Addition
    def operation(num1,num2)
        num1 + num2
    end
end

class Subtraction
    def operation(num1,num2)
        num1 - num2
    end
end

class Multiplication
    def operation(num1,num2)
        num1 * num2
    end
end
class Division
    def operation(num1,num2)
        num1 / num2
    end
end
math = MathOP.new(10,5)
addition = Addition.new
subtraction = Subtraction.new
multiplication = Multiplication.new
division = Division.new

puts math.operation(addition)
puts math.operation(subtraction)
puts math.operation(multiplication)
puts math.operation(division)
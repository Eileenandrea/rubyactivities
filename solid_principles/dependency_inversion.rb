

class MathOP
    def initialize(operand)
        @operand = operand
    end
    def operation(num1, num2)
        puts @operand
        @operand.new.operation(num1,num2)
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
addition = MathOP.new(Addition)
subtraction = MathOP.new(Subtraction)
multiplication =MathOP.new(Multiplication)
division = MathOP.new(Division)

puts addition.operation(15,3)
puts subtraction.operation(15,3)
puts multiplication.operation(15,3)
puts division.operation(15,3)
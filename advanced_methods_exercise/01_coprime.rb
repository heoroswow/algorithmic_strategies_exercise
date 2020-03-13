# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
    num1_divisor = (1..num1).select { |n| num1 % n == 0}
    num2_divisor = (1..num2).select { |n| num2 % n == 0}
    both_divisor = (num1_divisor & num2_divisor)

    
    if

        both_divisor.length > 1
        return false
    else
        return true
    end
    
    
end
p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
 p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false







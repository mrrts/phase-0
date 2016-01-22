# Factorial

# I worked on this challenge [with Norberto Caceres ].


# Your Solution Below
def factorial(number)
    if number == 0
        return 1
    end
    total = number
    while (number - 1) > 0
        total = total * (number - 1)
        number = number - 1
    end
    return total
end
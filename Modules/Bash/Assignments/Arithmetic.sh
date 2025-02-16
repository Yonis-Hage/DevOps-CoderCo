#!/bin/bash

# User input for 2 number
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Perform addition,subtraction, multiplication and divivision
sum=$((num1 + num2))
difference=$((num1 - num2))
product=$((num1 * num2))
quotient=$((num1 / num2))

# Check for division by zero
if [ "$num2" -ne 0 ]; then
    quotient=$(echo "scale=2; $num1 / $num2" | bc)
else
    quotient="Undefined (division by zero)"
fi

# Calculate the hypotenuse using the Pythagorean theorem (so num1^2 + num^2= sqrt of that answer)
hypotenuse=$(echo "scale=2; sqrt(($num1^2) + ($num2^2))" | bc)

# Display results
echo "Addition: $num1 + $num2 = $sum"
echo "Subtraction: $num1 - $num2 = $difference"
echo "Multiplication: $num1 * $num2 = $product"
echo "Division: $num1 / $num2 = $quotient"
echo "Hypotenuse (Pythagorean theorem): sqrt($num1² + $num2²) = $hypotenuse"
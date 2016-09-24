def sum_two_smallest_numbers(numbers)
  number1 = numbers.min
  numbers.delete_at(numbers.index(numbers.min))
  number2 = numbers.min
  puts number1 + number2
end

sum_two_smallest_numbers([5, 8, 12, 18, 22])
sum_two_smallest_numbers([7, 15, 12, 18, 22])
sum_two_smallest_numbers([25, 42, 12, 18, 22])

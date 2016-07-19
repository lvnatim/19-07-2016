# returns Fizz, Buzz, or FizzBuzz depending on the value of the integer
def evaluate(value)
  return 'FizzBuzz' if value % 15 == 0
  return 'Buzz' if value % 5 == 0
  return 'Fizz' if value % 3 == 0
  return value
end

# Evaluates the number from a to b
def fizzbuzz(a,b)
  a.upto(b) do |number|
    puts evaluate(number) if evaluate(number)
  end
end

# Test cases
fizzbuzz(1,19)
fizzbuzz(4,29)

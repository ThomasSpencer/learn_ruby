def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  total = 0
  array.each do |number|
    total += number
  end
  return total
end

def multiply(*number)
  total = 1
  number.each do |number|
    total *= number
  end
  return total
end

def factorial(number)
  total = 1
  (1..number).each do |number|
    total *= number
  end
  return total
end

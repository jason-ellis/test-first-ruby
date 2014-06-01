def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0
  array.each do |x|
    sum = sum + x
  end
  sum
end

def multiply(*nums)
  result = 1
  nums.each do |x|
    result = result * x
  end
  result
end

def power(a, b)
  a**b
end

def factorial(n)
  result = 0
  while n != 0 do
    temp = n * (n-1)
    result = result + temp
    n = n-1
  end
end
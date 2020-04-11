# frozen_string_literal: true
def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(nums)
  sum = 0
  nums.each do |num|
    sum += num
  end

  sum
end

def multiply(x, y, *nums)
  product = x * y
  nums.each do |num|
    product *= num
  end

  product
end

def power(base, power)
  base**power
end

def factorial(x)
  result = 1
  x.times do |i|
    result *= (i + 1)
  end

  result
end

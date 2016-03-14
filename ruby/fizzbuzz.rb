2..100.times do |i|

  i = i + 1
  puts i % 15 == 0 ? 'FizzBuzz' : i % 5 == 0 ? 'Buzz' : i % 3 == 0 ? 'Fizz' : i
  
end

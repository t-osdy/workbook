def leap_year(num)
  leap_flag = false

  if num % 400 == 0
    leap_flag = true
    display_print(num, leap_flag)
  elsif num % 100 == 0
    leap_flag = false
    display_print(num, leap_flag)
  elsif num % 4 == 0
    leap_flag = true
    display_print(num, leap_flag)
  else
    leap_flag = false
    display_print(num, leap_flag)
  end
end

def display_print(num, leap_flag)
  if leap_flag == true
    puts "#{num}年はうるう年です"
  else
    puts "#{num}年はうるう年ではありません"
  end
end

puts "西暦を入力してください"
num = gets.chomp.to_i
leap_year(num)

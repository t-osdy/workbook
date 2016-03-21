# 与えられた数が素数かどうか調べる
# あるいは与えられた数までの素数を列挙する

num = gets.chomp.to_i


if num == 1
  puts '1以外の数値を入力してください。'
else
  2.upto(num) do |i|
    flag = 0
    
    if i == 2
      puts 2
    else
      #2より上の数で１とその数以外で割れるやつならば表示しない
      3.upto(i-1) do |n|
        if i % n == 0 || i == 4
          flag += 1
        end
      end

      if flag == 0
        puts i
      end

    end
  end
end

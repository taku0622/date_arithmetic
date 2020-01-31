# カレンダー2020の作成
calendar2020 = []
month = 1
day = 1
while month < 13
  while day < 32
    if (month == 4 || month == 6 || month == 9 || month == 11) && day == 31
      day += 1
      next
    elsif month == 2 && day > 29
      day += 1
      next
    else
      calendar2020 << [month,day]
      day += 1
    end
  end
  day = 1
  month += 1
end

# ******************************************
# カレンダー2021の作成
calendar2021 = []
month = 1
day = 1
while month < 13
  while day < 32
    if (month == 4 || month == 6 || month == 9 || month == 11) && day == 31
      day += 1
      next
    elsif month == 2 && day > 28
      day += 1
      next
    else
      calendar2021 << [month,day]
      day += 1
    end
  end
  day = 1
  month += 1
end
# ******************************************

# 今日
now = Time.now
today = [now.month, now.day]
#puts now.class

# 入力部
puts "「年 月 日」で入力してください(例:2021 1 27)"
str = gets.chomp.to_s
arr = str.split(' ')
y = arr[0].to_i
m = arr[1].to_i
d = arr[2].to_i

# 出力部
if y == 2021
  puts "#{calendar2021.index([m, d]) + (calendar2020.size - calendar2020.index(today))}日後"
else
  if (calendar2020.index([m, d]) - calendar2020.index(today)) > 0
    puts "#{calendar2020.index([m, d]) - calendar2020.index(today)}日後"
  elsif calendar2020.index([m, d]) - calendar2020.index(today) == 0
    puts "今日です"
  else
    puts "#{(calendar2020.index([m, d]) - calendar2020.index(today)).abs}日前"
  end
end
# 使用者不断输入数字存进 Array，最后输出总和、平均、最大值、最小值

arr = []

while (true)
  print "请输入数字，结束请直接按 Enter: "
  user_input = gets
  if user_input == "\n"
    break
  else
    arr << user_input.to_i
  end
end

def total(arr)
  sum = 0
  for i in arr
    sum = i + sum
  end
  return sum
end

def average(arr)
  average = total(arr) / arr.size
end

def max(arr)
  a = 0
  arr.each do |i|
    if i > a
      a = i
    end
  end
  return a
end

def min(arr)
  a = arr[0]
  arr.each do |i|
    if i < a
      a = i
    end
  end
  return a
end

puts arr.to_s

puts "总和是 _#{total(arr)}____"
puts "平均是 __#{average(arr)}___"
puts "最大值是 __#{max(arr)}___"
puts "最小值是 __#{min(arr)}___"

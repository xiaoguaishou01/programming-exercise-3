# 请打开 wordcount.txt，计算每个单字出现的次数

doc = File.read("wordcount.txt")
arr = doc.gsub(/[.,]/ ,"").split(" ")

def count(arr)
  array = {}
  arr.each do |i|
    if array[i]
      array[i] += 1
    else
      array[i] = 1
    end
  end
  return array
end
# ...

answer = count(arr)

puts answer

# 给定一个数组包含 Hash，请过滤和排序

arr = [
  { "name" => "Peter", "age" => 30 },
  { "name" => "John", "age" => 15 },
  { "name" => "David", "age" => 45 },
  { "name" => "Steven", "age" => 22 },
  { "name" => "Vincent", "age" => 6 },
]

def adult(arr)
  array = []
  while 0 < arr.size
    a = arr[0]["age"]
    b = 0
    arr.each_with_index do |i, j|
      if i["age"] < a
        a = i["age"]
        b = j
      end
    end
    if a > 18
      array << arr[b]
    end
    arr.delete_at(b)

  end
  return array
end

puts "所有成年人，并由小到大: __#{adult(arr)}_______"

# 答案应该是
#[
#  { "name" => "Steven", "age" => 22 },
#  { "name" => "Peter", "age" => 30 },
#  { "name" => "David", "age" => 45 }
#]

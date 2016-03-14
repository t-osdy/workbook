#クイックソートアルゴ

def quick_sort(arr)
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x < middle}
  more = arr.select{|x| x >= middle}

  quick_sort(less) + [middle] + quick_sort(more)


end

sample_arr = ['can','feel','singing','like','a','can']

puts quick_sort(sample_arr)

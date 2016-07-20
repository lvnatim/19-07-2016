def breakdown(arr)
  arr.map! {|x| [x]} if arr[0].is_a? Integer
  arr[0] = combine_arr(arr[0], arr.pop) if arr.length.odd?
  arr
end

def combine_arr(left_arr, right_arr)
  res = []
  (left_arr.length * 2).times do
    if left_arr.any? and right_arr.any?
      left_arr.first < right_arr.first ? res.push(left_arr.shift) : res.push(right_arr.shift)
    elsif left_arr.empty? and right_arr.empty?
      break
    else
      res.push(right_arr.shift) if left_arr.empty? and right_arr[0]
      res.push(left_arr.shift) if right_arr.empty? and left_arr[0]
    end
  end
  res
end

def merge(arr)
  res = []
  (arr.length / 2).times do
    left_arr = arr.shift
    right_arr = arr.shift
    if left_arr && right_arr
      res.push(combine_arr(left_arr, right_arr))
    elsif left_arr == nil
      break
    elsif right_arr == nil
      res.push(left_arr)
    end
  end
  return res
end

def merge_sort(arr)
  while arr.length > 1 do
    arr = breakdown(arr)
    arr = merge(arr)
  end
  return arr[0]
end

p merge_sort([3,2,4,1,6,5,8,7,9])
p merge_sort([17,20,1,3,6,8,9])
p merge_sort([20,39,2,6,8,19,2])

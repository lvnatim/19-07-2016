require 'benchmark'

def merge_sort(array)
  return array if array.length == 1
  middle = array.length / 2
  merge(merge_sort(array[1..middle]), merge_sort(array[middle..-1]))
end

def merge(left, right)
  result = []
  until left.length == 0 || right.length == 0 do
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

p merge_sort([94,92,18,48,29,13,12,11,6,7,9,3,4])
puts Benchmark.measure{ 5000.times do merge_sort([94,92,18,48,29,13,12,11,6,7,9,3,4,17,14,11,1007,5001,3004,3220,3332,1,74,86]) end}

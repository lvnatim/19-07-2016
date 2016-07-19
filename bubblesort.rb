def sort(arr)
  loop do
    swapped = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break if swapped == false
  end
  return arr
end

puts sort([2, 42, 22, 32, 10, 29, 204])

def bubble_sort(arr)
  loop do
    sorted = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end

    break if not sorted
  end

  return arr
end


def bubble_sort_by(arr)
  loop do
    sorted = false
    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]) > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end

    break if not sorted
  end

  return arr
end

print bubble_sort([4,3,78,2,0,2])

puts "\n"

print bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }

puts "\n"

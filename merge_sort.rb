def merge_sort(arr)
  return arr if arr.length <= 1
  
  left = merge_sort(arr[0..arr.length / 2 - 1])
  right = merge_sort(arr[arr.length / 2..-1])

  merged = []
  i = 0
  j = 0
  while i < left.length && j < right.length
    if left[i] < right[j]
      merged << left[i]
      i += 1
    else
      merged << right[j]
      j += 1
    end
  end
  merged.concat(left[i..-1]) if i < left.length
  merged.concat(right[j..-1]) if j < right.length
  merged
end

p merge_sort([3,1231,454,3, 2, 1, 4, 5])
def naive(arr,window)
  current_max_range = 0

  arr.each_with_index do |el,idx|
    min = arr[idx...idx+window].min
    max = arr[idx...idx+window].max
    range = max - min
    if range > current_max_range
      current_max_range = range
    end
  end
  current_max_range
end

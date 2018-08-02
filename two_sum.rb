def bad_two_sum(list, target)
  list.each_with_index do |el1, idx1|
    list.each_with_index do |el2, idx2|
      next if idx1 == idx2
      return true if el1 + el2 == target
    end
  end
  false
end

def ok_two_sum(list, target)
  sorted = list.sort
  i = 0
  j = sorted.size
  until i == j
    case sorted[i] + sorted[j] <=> target
    when 0
      return true
    when -1
      i += 1
    when 1
      j -= 1
    end
  end
  false
end

def awesome_two_sum(list,target)
  hash = Hash.new(0)

  list.each do |el|
    hash[el] += 1
  end

  list.each do |el|
    look_for = target - el
    if look_for == el
      return true if hash[el] > 1
    else
      return true if hash.has_key?(look_for)
    end
  end
  false
end

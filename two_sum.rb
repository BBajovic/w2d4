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

require 'byebug'
def my_min(list)
  list.each do |el1|
    min = true
    list.each do |el2|
      if el1 > el2
        min = false
      end
    end
    return el1 if min == true
  end
end

def n_class_min(list)
  list.reduce do |min, el|
    if el < min
      min = el
    else
      min
    end
  end
end

def sub_sum(list)
  i = 0
  subs = []
  while i < list.length
    j = i

    while j < list.length
      subs << list[i..j]
      j += 1

    end
    i += 1
  end

  sums = subs.map do |arr|
    arr.reduce(&:+)
  end

  sums.max
end

def better_sub_sum(list)
  max = list.first
  current = list.first

  return list.max if list.all?{ |el| el < 0}

  (1...list.size).each do |i|
    current = 0 if current < 0
    current += list[i]
    max = current if current > max
  end
  max

end

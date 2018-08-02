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
    byebug
    arr.reduce(&:+)
  end

  sums.max
end

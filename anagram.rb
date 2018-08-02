require 'byebug'

def anagram(string, target)
  return true if string == target

  str_arr = string.split("")

  perms = str_arr.permutation.to_a

  str_perms = perms.map { |arr| arr.join  }
  str_perms.include?(target)
end

def second_anagram(string,target)
  arr = string.split("")
  tar_arr = target.split("")

  arr.each do |el|
    if tar_arr.index(el).nil?
      return false
    else
      idx = tar_arr.index(el)
    end
    tar_arr.delete_at(idx)
  end
  tar_arr == []
end

def third_anagram(string, target)
  string.split("").sort == target.split("").sort
end

def fourth_anagram(string, target)
  str_hash = Hash.new(0)
  targ_hash = Hash.new(0)

  string.chars do |ch|
    str_hash[ch] += 1
  end

  target.chars do |ch|
    targ_hash[ch] += 1
  end

  str_hash == targ_hash
end

def bonus_anagram(string, target)
  check_hash = Hash.new(0)

  string.chars do |ch|
    check_hash[ch] += 1
  end

  target.chars do |ch|
    check_hash[ch] -= 1
  end

  check_hash.values.all?{ |el| el == 0}
end

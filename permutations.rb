def permutations(chars = %w(a b c), number = 2)
  arr = chars.permutation(number).to_a
  arr.collect{|nested_arr| nested_arr.join}
end

chars = [1,2,3]
number = 3

print permutations(chars, number)
puts

arr_of_arr = chars.map {|n| [n]}

(1..number - 1).each do
  arr_of_arr = arr_of_arr.map do |arr|
    chars.map do |char|
      if arr != nil \
        && arr.select {|char1| char1 == char} == [] \
        && arr[-1] != char
        arr + [char]
      end
    end
  end.reduce(:+)
end

arr_of_arr = arr_of_arr.select {|a| a != nil}

print arr_of_arr
puts

chars = chars.map {|n| n.to_s}
arr = (1..number-1).reduce(chars) do |accum|
  accum.map do |permutation|
    chars.map do |char|
      permutation + char unless permutation[-1] == char
    end.reject(&:nil?)
  end.reduce(:+)
end

print arr
puts

#   new_arr_of_arr = (
#     (0...chars.size).map do |i|
#       to_add = chars.select {|n| n != chars[i]}
#
#       arr_of_arr1 = arr_of_arr[i].map {|arr| [arr, arr]}.flatten
#
#       ret = []
#       (0..1).each do |num|
#         ret.push (arr_of_arr1[num] + to_add[num])
#       end
#       ret
#     end
#   )
#   arr_of_arr = new_arr_of_arr
# end

print %w(t r i c k y t e s t).sort

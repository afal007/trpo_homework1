def permutations(chars = %w(a b c), number = 2)
  arr = chars.permutation(number).to_a
  arr.collect{|nested_arr| nested_arr.join}
end

chars = ARGV[0].split('')
number = ARGV[1].to_i

print permutations(chars, number)
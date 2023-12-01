# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  return 1 if chars.length == 1

  s =
  char_len = chars.length
  count = 1
  first_index = 0
  last_index = 0
  (1..(char_len - 1)).each do |i|
    if chars[i] == chars[i - 1]
      count += 1
      s += count.to_s if count > 1 && i == char_len - 1
    else
      s += count.to_s if count > 1
      if count == 1
        first_index = i
      elsif count > 1
        last_index = i
        chars.slice!((first_index + 1)...last_index)
      end

      count = 1
    end
  end
  chars
end

output = compress(["a","a","b","b","c","c","c"])
puts output
output = compress(["a"])
puts output
output = compress(["a","b","b","b","b","b","b","b","b","b","b","b","b"])
puts output

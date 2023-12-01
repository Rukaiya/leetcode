# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  return chars if chars.length == 1

  s = chars[0]
  char_len = chars.length
  count = 1
  (1..(char_len - 1)).each do |i|
    if chars[i] == chars[i - 1]
      count += 1
      s += count.to_s if count > 1 && i == char_len - 1
    else
      s += count.to_s if count > 1
      s += chars[i]
      count = 1
    end
  end
  s.split('')
end

output = compress(["a","a","b","b","c","c","c"])
puts output.inspect
output = compress(["a"])
puts output.inspect
output = compress(["a","b","b","b","b","b","b","b","b","b","b","b","b"])
puts output.inspect


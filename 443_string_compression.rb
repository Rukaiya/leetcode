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

def compress2(chars)
  return chars if chars.length == 1

  s = chars[0]
  char_len = chars.length
  count = 1
  start_index = 0
  end_index = 0
  # (char_len - 2)..downto(0).each do |i|
  #   if chars[i] == chars[i + 1]
  #     end_index = i + 1 if count == 1
  #     count += 1
  #   else
  #     start_index = i + 1
  #
  #   end
  # end
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


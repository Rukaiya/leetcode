# https://leetcode.com/problems/greatest-common-divisor-of-strings/description/?envType=study-plan-v2&envId=leetcode-75

def gcd_of_strings(str1, str2)
  min_len = [str1.size, str2.size].min

  min_len.downto(1) do |i|
    x = str2[0...i]
    return x if str1.scan(x).count * i == str1.size && str2.scan(x).count * i == str2.size
  end
  ''
end

gcd_of_strings("ABCABC", "ABC")
gcd_of_strings("ABABAB", "ABAB")
gcd_of_strings("LEET", "CODE")

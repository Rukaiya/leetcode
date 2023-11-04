# https://leetcode.com/problems/reverse-vowels-of-a-string/description/?envType=study-plan-v2&envId=leetcode-75

def reverse_vowels(s)
  len = s.length
  vowels = s.scan(/[aeiou]/i)
  (0...len).each do |ele|
    s[ele] = vowels.pop if 'aeiouAEIOU'.include?(s[ele])
  end
  s
end

s = reverse_vowels("hello")
puts s

s = reverse_vowels("leetcode")
puts s

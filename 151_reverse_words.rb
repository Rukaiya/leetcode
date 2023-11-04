# https://leetcode.com/problems/reverse-words-in-a-string/description/?envType=study-plan-v2&envId=leetcode-75

def reverse_words(s)
  s.split.reverse.join(' ')
end

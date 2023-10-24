# https://leetcode.com/problems/merge-strings-alternately/description/?envType=study-plan-v2&envId=leetcode-75
def merge_alternately(word1, word2)
  max_len = [word1.length, word2.length].max
  str = ''
  0.upto(max_len - 1) do |i|
    str += word1[i] if word1[i]
    str += word2[i] if word2[i]
  end
  puts str
  end

merge_alternately('abcd', "pq")
merge_alternately('ab', "pqrs")
merge_alternately('abc', "pqr")

# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/?envType=study-plan-v2&envId=leetcode-75
def kids_with_candies(candies, extra_candies)
  result = []
  max_candy = candies.max
  candies.each do |candy|
    result << ((candy + extra_candies) >= max_candy)
  end
  result
end

kids_with_candies([2, 3, 5, 1, 3], 3)

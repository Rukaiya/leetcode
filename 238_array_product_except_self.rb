# https://leetcode.com/problems/product-of-array-except-self/description/?envType=study-plan-v2&envId=leetcode-75

def product_except_self(nums)
  other_arr = []
  nums.map.with_index do |_, index|
    other_arr << (nums[0...index] + nums[index + 1..]).reduce(:*)
  end
  other_arr
end

output = product_except_self([-1,1,0,-3,3])
puts output.inspect

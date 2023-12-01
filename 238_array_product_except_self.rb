# frozen_string_literal: true

# https://leetcode.com/problems/product-of-array-except-self/description/?envType=study-plan-v2&envId=leetcode-75

def product_except_self(nums)
  nums_len = nums.length
  prefix_arr = [1]
  suffix_arr = Array.new(nums_len, 1)
  (1..(nums_len - 1)).each { |i| prefix_arr[i] = prefix_arr[i - 1] * nums[i - 1] }
  (nums_len - 2).downto(0).each { |i| suffix_arr[i] = suffix_arr[i + 1] * nums[i + 1] }

  prefix_arr.zip(suffix_arr).map { |a, b| a * b }
end

output = product_except_self([-1, 1, 0, -3, 3])
puts output.inspect

output = product_except_self([1,2,3,4])
puts output.inspect


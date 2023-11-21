# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  len = nums.length
  return false if len < 3

  i = 0
  while i < len - 2
    # check 3 items in each loop
    return true if [nums[i], nums[i+1], nums[i+2]].each_cons(2).all? { |a, b| a <=> b == -1 }
  end

end

nums = [1, 2, 3, 4, 5]
result = increasing_triplet(nums)
puts result

nums = [5, 4, 3, 2, 1]
result = increasing_triplet(nums)
puts result

nums = [2, 1, 5, 0, 4, 6]
result = increasing_triplet(nums)
puts result


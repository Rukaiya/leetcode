# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  first = Float::INFINITY
  second = Float::INFINITY

  nums.each do |val|
    if val <= first
      first = val
    elsif val <= second
      second = val
    else
      return true
    end
  end
  false
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


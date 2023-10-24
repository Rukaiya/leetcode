# https://leetcode.com/problems/can-place-flowers/description/?envType=study-plan-v2&envId=leetcode-75

def can_place_flowers(flowerbed, n)
  index = 0
  while index < flowerbed.length
    # print(val, index)
    if flowerbed[index].positive?
      index += 1
      next
    end

    # initial index with 0 val
    if index.zero? && flowerbed[index + 1]&.zero?
      n -= 1
      index += 1
      next
    end

    # last 2 point
    if index == flowerbed.length - 2
      # if both are zeros
      n -= 1 if flowerbed[index].zero? && flowerbed[index + 1]&.zero?
      # break if not
      break
    end

    if flowerbed[index..(index + 2)].all?(&:zero?)
      n -= 1
      index += 3
    end
    break if n.zero?
  end
  n.zero?
end

output = can_place_flowers([1,0,0,0, 0,1], 2)
puts output

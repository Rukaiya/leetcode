# https://leetcode.com/problems/can-place-flowers/description/?envType=study-plan-v2&envId=leetcode-75

def can_place_flowers(flowerbed, n)
  index = 0
  while index < flowerbed.length && n.positive?
    if flowerbed[index].zero?
      if (index.zero? || flowerbed[index - 1]&.zero?) && (index == flowerbed.length - 1 || flowerbed[index + 1]&.zero?)
        n -= 1
        flowerbed[index] = 1
        index += 2
      else
        index += 1
      end
    else
      index += 1
    end
  end
  n.zero?
end

output = can_place_flowers([1, 0, 0, 0, 1, 0, 0], 2)
puts output
output = can_place_flowers([0, 1, 0, 1, 0, 1, 0, 0], 1)
puts output
output = can_place_flowers([1, 0, 0, 0, 0, 1], 1)
puts output

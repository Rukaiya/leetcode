# https://leetcode.com/problems/merge-sorted-array/?envType=study-plan-v2&envId=top-interview-150
def merge(nums1, m, nums2, n)
  t_len = m + n -1
  len1 = m
  len2 = n
  while n > 0
    if nums1[len1] < nums2[len2]
      nums1[t_len] = nums2[len2]
      t_len -= 1
      len2 -= 1
    else
      nums1[t_len] = nums1[len1]
      t_len -= 1
      len1 -= 1
    end
  end
end
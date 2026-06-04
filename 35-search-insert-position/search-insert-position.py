class Solution(object):
    def searchInsert(self, nums, target):
        for index in range(len(nums)):
            if nums[index] == target:
                return index
            elif nums[index] > target:
                return index
            elif index + 1 == len(nums):
                return index + 1
        
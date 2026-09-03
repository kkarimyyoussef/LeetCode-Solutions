class Solution {
    public int removeDuplicates(int[] nums) {

        int k = 1;
        int currentIndex = 1;

        for (int i = 0; i < nums.length - 1; i++) {

            if (nums[i] != nums[i + 1]) {

                nums[currentIndex] = nums[i + 1];

                currentIndex++;
                k++;
            }
        }

        return k;
    }
}
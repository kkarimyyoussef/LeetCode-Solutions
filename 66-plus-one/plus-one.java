class Solution {
    public int[] plusOne(int[] digits) {
        // okay this is a very unique approach relating to carrying ones at the end

        // I first thought of a brute force approach of changing the entire array to an int
        // adding a 1 and then chaning the int to an array again
        //this fails as the input size increases

        // the second approach is to use the right most 9s as my base case
        //base case: if the entire array is comproimsed of 9s then thats when we add a new item in the array

        int count = 0;

        for(int i = digits.length -1; i >= 0; i--){
            if (digits[i] < 9){
                digits[i] = digits[i] + 1;
                return digits;
            }
            digits[i] = 0;
        }
        int[] newArray = new int[digits.length + 1];
        newArray[0] = 1;

        return newArray;
    }
}
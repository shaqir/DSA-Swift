
/*
 88. Merge Sorted Array
  
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

 Example 1:

 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
 The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
 
 Example 2:

 Input: nums1 = [1], m = 1, nums2 = [], n = 0
 Output: [1]
 Explanation: The arrays we are merging are [1] and [].
 The result of the merge is [1].
 
 */

 

func mergeSorteArray(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var p1 = m - 1
    var p2 = n - 1
    var p = m + n - 1
    
    while(p1 >= 0 && p2 >= 0){
        if(nums1[p1] > nums2[p2]){
            nums1[p] = nums1[p1]
            p1 -= 1
        }else {
            nums1[p] = nums2[p2]
            p2 -= 1
        }
        p -= 1
    }
    
    while(p2 >= 0){
        nums1[p] = nums2[p2]
        p2 -= 1
        p -= 1
    }
}

var nums1 = [1,2,3,0,0,0]
let nums2 = [2,5,6]
let m = 3
let n = 3

mergeSorteArray(&nums1, m, nums2, n)
print(nums1)
//Output: [1,2,2,3,5,6]

/*

 Time Complexity: O(m + n)

 Total operations ≤ m (from nums1) + n (from nums2) = O(m + n)

 Why?

- You use a single while loop to compare and place elements until either p1 < 0 or p2 < 0.

- In the worst case, both arrays are fully traversed — meaning you go through each of the m and n elements exactly once.

- The final loop that copies leftover elements from nums2 (if any) can run at most n times.
 
 Space Complexity: O(1)
 
 The merging is done in-place within nums1.

 No extra arrays or significant memory is allocated — just a few integer variables for pointers.
 
 Final Conclusion:
 
 This algorithm is the best possible time complexity: O(m + n)
 And it is also optimal in space: O(1)

*/


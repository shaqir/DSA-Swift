/*
 Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
 
 Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:
 
 Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 
 Example 1:
 
 Input: nums = [1,1,2]
 Output: 2, nums = [1,2,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.isEmpty { return 0 }  // if the array is empty, return 0
    
    var i = 0  // pointer to place the next unique number
    
    for j in 1..<nums.count {
        // check if nums[j] is different from the last unique number at nums[i]
        print("j: \(j), i: \(i), nums[j]: \(nums[j]), nums[i]: \(nums[i])")
        if nums[j] != nums[i] {
            i += 1              // move to the next position
            nums[i] = nums[j]   // copy the unique number to that position
        }
    }
    return i + 1  // total unique numbers = last index + 1
}

var nums = [0,0,1,1,1,2,2,3,3,4]
let k = removeDuplicates(&nums)
print("final nums: \(nums) and k is \(k)")


// Remove Element
/*
 
 Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
 
 Input: nums = [3,2,2,3], val = 3
 Output: 2, nums = [2,2,_,_]
 
 Input: nums = [0,1,2,2,3,0,4,2], val = 2
 Output: 5, nums = [0,1,4,0,3,_,_,_]
 Note that the five elements can be returned in any order.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 */
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var i = 0  // write pointer
    for num in nums {
        if num != val {
            nums[i] = num  // write valid number
            i += 1         // move write pointer
        }
    }
    return i  // number of valid elements
}

var nums1 = [0,1,2,2,3,0,4,2]
let val = 2
let k1 = removeElement(&nums1, val)
print("k1 =", k1)
print("Modified nums =", nums[0..<k])

/*
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You must write an algorithm with O(log n) runtime complexity.

  

 Example 1:

 Input: nums = [1,3,5,6], target = 5
 Output: 2
 
 */
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    if(nums.isEmpty){
        return 0
    }
    
    while left <= right{
        let mid = left + (right - left)/2
        if(nums[mid] == target){
            return mid
        }
        else if(nums[mid] < target){
            left = mid + 1
        }
        else{
            right = mid - 1
        }
    }
    return left
}

// Recursive Version

func binarySearchInsert(_ nums: [Int], _ target: Int) -> Int {
    return binarySearch(nums, target, left: 0, right: nums.count - 1)
}

func binarySearch(_ nums: [Int], _ target: Int, left: Int, right: Int) -> Int {
    
    if left > right {
        return left
    }
    
    let mid = left + (right - left) / 2
    
    if nums[mid] == target {
        return mid
    } else if nums[mid] < target {
        return binarySearch(nums, target, left: mid + 1, right: right)
    }
    else {
        return binarySearch(nums, target, left: left, right: mid - 1)
    }
}
 
print(binarySearchInsert([1,3,5,6], 5))

/*
 Complexity of Recursive Version

 Time Complexity: O(log n) — just like the iterative version

Space Complexity: O(log n) due to the recursive call stack
 
 */


//Nested Loop so timeComplexity O(n²)
func twoSum(array: [Int], target: Int) -> [(Int, Int)] {
        
    var result: [(Int,Int)] = []
    
    for i in 0..<array.count {
        let left = array[i]
        for j in 0..<array.count {
            if array[i] + array[j] == target {
                result.append((i,j))
            }
        }
    }
    return result
}

// Note:
// This version may miss some duplicate values unless you adjust it to track multiple indices per value.
// store all unique index pairs:
// Time Complexity: O(n)
func twoSum1(array: [Int], target: Int) -> [(Int, Int)] {
    
    var result: [(Int, Int)] = []
    
    for i in 0..<array.count {
        for j in i + 1..<array.count {
            if array[i] + array[j] == target {
                result.append((i, j)) // return on first valid pair
            }
        }
    }
    return result
}

print(twoSum1(array: [2,2,1,1,-2,1,-2,5,5,], target: 3))

// Advanced Version
/*
 Goal:
 Finds all unique index pairs (i, j) such that:

 array[i] + array[j] == target

 i != j

 Avoids duplicate index pairs

 Handles duplicate values properly (e.g., [3, 3, 3, 3] with target 6)
//Swift Implementation (Multi-Index Hash Map)
 
 */

func allTwoSumPairs(array: [Int], target: Int) -> [(Int, Int)] {
    var valueToIndices: [Int: [Int]] = [:]
    var result: Set<[Int]> = []

    // Step 1: Build a map of value → all indices
    for (index, value) in array.enumerated() {
        valueToIndices[value, default: []].append(index)
    }

    // Step 2: Iterate through all elements
    for (i, value) in array.enumerated() {
        let complement = target - value

        // Temporarily remove current index to avoid self-pairing
        valueToIndices[value]?.removeAll(where: { $0 == i })

        if let complementIndices = valueToIndices[complement] {
            for j in complementIndices {
                let pair = i < j ? [i, j] : [j, i]
                result.insert(pair) // Set avoids duplicates
            }
        }

        // Restore current index (not required unless reusing map)
        // valueToIndices[value, default: []].append(i)
    }

    // Convert Set<[Int]> to [(Int, Int)]
    return result.map { ($0[0], $0[1]) }
}
let nums = [3, 3, 3, 3]
let target = 6
print(allTwoSumPairs(array: nums, target: target))
// Output: [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]
//✅ Every combination of distinct indices where 3 + 3 == 6 is returned, no duplicates.
//Time Complexity: O(n²) in worst case


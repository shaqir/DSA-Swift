

func findEquilibriumIndex(_ nums: [Int]) -> [Int]? {
    
    var leftSum = 0
    var indices = [Int]()
    let totalSum = nums.reduce(0, +)
    
    print("totalSum: \(totalSum)")
    
    for i in 0..<nums.count {
        let rightSum = totalSum - leftSum - nums[i]
        print("leftSum: \(leftSum)")
        print("rightSum: \(rightSum)")
        if leftSum == rightSum {
            print("i: \(i)")
            indices.append(i)
        }
        leftSum += nums[i]
    }

    return indices.isEmpty ? nil : indices
}

print(findEquilibriumIndex([1, 2, 3,4,2,4,5,3,2,1,3,-2,4,1,-1,2,3,3,1,4,2,2,4,1,3,1])!)
//Output index : 12
//Value at index: -2

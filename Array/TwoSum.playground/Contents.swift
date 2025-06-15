

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

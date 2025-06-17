

// Insertion Sort

func insertionSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    var count = array.count
    var resultArray = array
    for sortedIndex in 1..<count {
        var backIndex = sortedIndex
        while(backIndex > 0 && resultArray[backIndex] < resultArray[backIndex - 1] ){
            print("Swaping \(resultArray[backIndex - 1]) with \(resultArray[backIndex])")
            resultArray.swapAt(backIndex - 1, backIndex)
            backIndex -= 1
        }
    }
    return resultArray
}
print(insertionSort([8,3,2,5,4,1,7,6,9,10]))

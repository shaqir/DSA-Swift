// Binary Search


func binarySearch(_ array: [Int], target: Int) -> Int?{
    
    if array.isEmpty {
        return nil
    }
    
    let sorted = array.sorted() // O(n log n)
   
    var low = 0
    var high = sorted.count - 1
    
   
    while low <= high {
        var mid = (low + high) / 2
        
        if(sorted[mid] == target){
            return mid
        }
        else if(sorted[mid] < target){
            low = mid + 1
        }
        else if (sorted[mid] > target){
            high = mid - 1
        }
    }
    return nil
}

var input = [24,1,5,7,81,34,3,6,44,56]
print(binarySearch(input, target: 81))
print(binarySearch(input, target: 4))

var array = [1,3,2,5,4,8,6,10,7,9]

func insertionSort(array: [Int]) -> [Int] {
    var sortedArray = array
    for i in 1..<sortedArray.count {
        var j = i
        while j > 0 && sortedArray[j] < sortedArray[j - 1] {
            sortedArray.swapAt(j, j - 1)
            j -= 1
        }
    }
    return sortedArray
}

print(insertionSort(array: array))

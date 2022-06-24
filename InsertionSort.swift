var array = [1,2,3,5,4,6,7,8,9,10]

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

var array = [1,2,3,5,4,6,7,8,9,10]

func mergeSort(array: [Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    let middle = array.count / 2
    let left = mergeSort(array: Array(array[0..<middle]))
    let right = mergeSort(array: Array(array[middle..<array.count]))
    return merge(left: left, right: right)
}

print(insertionSort(array: array))

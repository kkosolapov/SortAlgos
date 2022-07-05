var array = [1,3,2,5,4,8,6,10,7,9]

func mergeSort(array: [Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    let middle = array.count / 2
    let left = mergeSort(array: Array(array[0..<middle]))
    let right = mergeSort(array: Array(array[middle..<array.count]))
    return merge(left: left, right: right)
}

print(mergeSort(array: array))

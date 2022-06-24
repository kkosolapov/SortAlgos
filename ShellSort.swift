var array = [1,2,3,5,4,6,7,8,9,10]

func shellSort(array: inout [Int]) {
    let n = array.count
    let h = 1
    while h < n/3 {
        h = 3*h + 1
    }
    while h >= 1 {
        for i in h..<n {
            for j in (0..<i).reversed() {
                if array[j] > array[j+h] {
                    array.swapAt(j, j+h)
                }
            }
        }
        h = h/3
    }
}

print(shellSort(array: array))

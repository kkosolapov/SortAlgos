var array = [1,3,2,5,4,8,6,10,7,9]

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

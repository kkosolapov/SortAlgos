import Foundation

func SelectionSort(){
    
    var n;

    try {
        cout << "Enter positive size of array\n";
        cin >> n;

        do {
        try 
             print ("Enter positive size of array\n");
             n=readline()
            
            if n < 1 {
                print ("Size of array must be a positive int number")
            }
       
            else {
                print("\n")

            var arr = [Int](n);

            for i in  0...n {
                arr[i] = readline();
            }

            var i, min, n_min, j;

            for i in 0...n - 1; i++) {
                
                min = arr[i];
                n_min = i;

                for j in i + 1...n {
                    if (arr[j] < min) {
                        min = arr[j];
                        n_min = j;
                    }

                    arr[n_min] = arr[i];
                    arr[i] = min;
                }
            }

            print ("\n");

            print("Sorted array\n");
            for  i in  0...n {
                print(arr[i]);
            }

            print("\n");
        }

    }

    catch let i{
        n = readline;
    }
}

SelectionSort()

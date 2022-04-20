import Foundation

func SimpleExchangeSort() {

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


            for  i = 1...n {
                for j = n - 1...i {
                    if (arr[j] < arr[j - 1]) {
                        int r = arr[j];
                        arr[j] = arr[j - 1];
                        arr[j - 1] = r;
                    }
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

SimpleExchangeSort()

import Foundation

@main

func InsertionSort() {

    var n;

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

            var i = 0;

            for j in 1...n{
                var key = arr[j];
                i = j - 1;

                while i >= 0 && arr[i] > key {
                    arr[i + 1] = arr[i];
                    i = i - 1;
                    arr[i + 1] = key;
                }

            }

            print("\n");

            print("Sorted array\n")
            for i in 0...n {
                print(arr[i]);
            }
                
            print("\n");
        
        }
       
    }

    catch let i{
        n = readline;
    }
}

InserionSort()

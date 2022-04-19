import Foundation

func InsertionSort() {

    var n;

    try {
        cout << "Enter positive size of array\n";
        cin >> n;

        if (n < 1 || n != int(n)) {
            throw "Size of array must be a positive int number";
        }

        else {
            cout << '\n';

            int* arr = new int[n];

            for (int i = 0; i < n; i++) {
                cin >> arr[i];
            }

            int i = 0;

            for (int j = 1; j < n; j++) {
                int key = arr[j];
                i = j - 1;

                while ((i >= 0) && arr[i] > key) {
                    arr[i + 1] = arr[i];
                    i = i - 1;
                    arr[i + 1] = key;
                }

            }

            cout << '\n';

            cout << "Sorted array\n";
            for (int i = 0; i < n; i++) {
                cout << arr[i];
            }

            delete[]arr;
            cout << '\n';
        }

    }

    catch (int i) {
        cin >> n;
    }
}

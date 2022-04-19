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

void SelectionSort()
{
    int n;

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

            int i, min, n_min, j;

            for (i = 0; i < n - 1; i++) {
                min = arr[i];
                n_min = i;

                for (j = i + 1; j < n; j++) {
                    if (arr[j] < min) {
                        min = arr[j];
                        n_min = j;
                    }

                    arr[n_min] = arr[i];
                    arr[i] = min;
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

void SimpleExchangeSort() {

    int n;

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

            for (int i = 1; i < n; i++) {
                for (int j = n - 1; j >= i; j--) {
                    if (arr[j] < arr[j - 1]) {
                        int r = arr[j];
                        arr[j] = arr[j - 1];
                        arr[j - 1] = r;
                    }
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

int main()
{
   InsertionSort();
   SelectionSort();
   SimpleExchangeSort();
}

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

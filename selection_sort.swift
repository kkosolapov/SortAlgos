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


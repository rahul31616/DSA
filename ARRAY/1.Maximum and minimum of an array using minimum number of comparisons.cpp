class Solution {
public:
    pair<int, int> getMinMax(vector<int>& arr) {
        int n = arr.size();
        int minVal, maxVal;
        int i;

        if (n == 0)
            return {-1, -1}; // Edge case

        if (n % 2 == 0) {
            if (arr[0] < arr[1]) {
                minVal = arr[0];
                maxVal = arr[1];
            } else {
                minVal = arr[1];
                maxVal = arr[0];
            }
            i = 2;
        } else {
            minVal = maxVal = arr[0];
            i = 1;
        }

        while (i < n - 1) {
            if (arr[i] < arr[i + 1]) {
                minVal = min(minVal, arr[i]);
                maxVal = max(maxVal, arr[i + 1]);
            } else {
                minVal = min(minVal, arr[i + 1]);
                maxVal = max(maxVal, arr[i]);
            }
            i += 2;
        }

        return {minVal, maxVal};
    }
};

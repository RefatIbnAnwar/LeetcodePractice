class Solution {
    func minDays(_ bloomDay: [Int], _ m: Int, _ k: Int) -> Int {
        var low = 0
        var high = 0

        for every in bloomDay {
            high = max(high, every)
        }

        var minDays = -1

        while(low <= high){
            var mid = (low + high) / 2

            if (getNumberOfTora(bloomDay, mid, k) >= m){
                minDays = mid
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        return minDays
    }

    func getNumberOfTora(_ bloomDay: [Int], _ mid: Int, _ k: Int) -> Int{
        var numOfTora = 0
        var count = 0

        for i in 0..<bloomDay.count {
            if bloomDay[i] <= mid {
                count += 1
            } else {
                count = 0
            }

            if count == k {
                numOfTora += 1
                count = 0
            }
        }
        return numOfTora
    }
}
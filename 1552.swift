class Solution {
    func maxDistance(_ position: [Int], _ m: Int) -> Int {
        let sortedPosition: [Int] = position.sorted()
        var low = 0
        var high = sortedPosition[sortedPosition.count - 1]

        var optimal = 0

        while(low <= high) {
            var mid = ( low + high ) / 2

            if isPlacementPossible(sortedPosition, m, mid) {
                optimal = mid
                low = mid + 1
            }else {
                high = mid - 1
            }
        }
        return optimal
    }

    func isPlacementPossible(_ position: [Int], _ m: Int, _ mid: Int) -> Bool {
        var count = 1
        var last = position[0]
        for i in 0..<position.count {
            if (position[i] - last) >= mid {
                last = position[i]
                count += 1
            }
        }
        return count >= m

    }
}
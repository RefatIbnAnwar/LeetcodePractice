class Solution {
    func minIncrementForUnique(_ nums: [Int]) -> Int {
        var sortedArray = nums.sorted()
        var minIncrements = 0
        var i = 1

        while(i < nums.count){
            if (sortedArray[i] <= sortedArray[i - 1]) {
                var increment = sortedArray[i - 1] + 1 - sortedArray[i]
                minIncrements += increment

                sortedArray[i] = sortedArray[i - 1] + 1
            }
            i += 1
        }
        return minIncrements
    }
}
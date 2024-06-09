//https://leetcode.com/problems/subarray-sums-divisible-by-k/
// followed this solution
// https://leetcode.com/problems/subarray-sums-divisible-by-k/solutions/5284309/solution-swift-easy

class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var sum: Int = 0
        var rem: Int = 0
        var result: Int = 0

        var hash: [Int : Int] = [0: 1]
        for num in nums {
            sum += num
            rem = sum % k

            if rem < 0 {
                rem += k
            }

            if let value = hash[rem] {
                result += value
                hash[rem] = value + 1
            }
            else {
                hash[rem] = 1
            }
        }

        return result
    }
}
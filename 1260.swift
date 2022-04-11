// Problem Link : https://leetcode.com/problems/shift-2d-grid/

// 1260. Shift 2D Grid
// Solution:

class Solution {
    func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
        var m = grid[0].count
        var n = grid.count
        
        var ans = grid
        var temp = grid
        
        var step = 1
        
        while( step <= k) {
            
            var i = 0
            while(i <= (n - 1))
            {
                var j = 0
                while(j <= (m - 1)) {
                    if i == (n - 1) && j == (m - 1) {
                        ans[0][0] = temp[i][j]
                        j += 1
                        continue
                    }
                    if j == (m - 1) {
                        ans[i + 1][0] = temp[i][j]
                        j += 1
                        continue
                    }
                    ans[i][j + 1] = temp[i][j]
                    j += 1
                    //print(ans[i][j])
                }
                i += 1
            }
            step += 1
            temp = ans
            //print(ans)
        }
        return ans
    }
}

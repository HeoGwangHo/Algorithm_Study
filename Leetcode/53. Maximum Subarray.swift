// MARK: - 카데인 알고리즘(최대 부분합)
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var ans = nums[0]
        var sum = nums[0]
        
        for i in 1..<nums.count {
            sum = max(sum + nums[i], nums[i])
            
            ans = max(sum, ans)
        }
        
        return ans
    }
}

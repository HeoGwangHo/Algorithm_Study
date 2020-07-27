// MARK: - Set
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var set: Set<Int> = []
        
        for i in 0..<nums.count {
            if !set.contains(nums[i]) {
                set.insert(nums[i])
            } else {
                set.remove(nums[i])
            }
        }
        
        return set.first!
    }
}
// MARK: - 비트연산
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var n = 0
        
        for i in 0..<nums.count {
            n ^= nums[i]
        }
        
        return n
    }
}


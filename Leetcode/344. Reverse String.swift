class Solution {
    func reverseString(_ s: inout [Character]) {
        var copy = s
        for i in 0..<copy.count {
            let temp = copy[i]
            copy[i] = copy[copy.count - 1 - i]
            copy[copy.count - 1 - i] = temp
        }
        print(copy)
    }
}

// MARK: - Library
class Solution {
    func reverseString(_ s: inout [Character]) {
        return s.reversed()
    }
}

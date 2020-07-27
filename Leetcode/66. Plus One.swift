class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
    
        if digits.last != 9 {
            let num = digits.removeLast()
            digits.append(num + 1)
            return digits
        } else {
            for i in stride(from: digits.count - 1, through: 0, by: -1) {
                let num = digits[i]
                if num == 9 {
                    digits[i] = 0
                } else {
                    digits[i] += 1
                    break
                }
                if i == 0 {
                    digits.insert(1, at: 0)
                }
            }

            return digits
        }
    }
}

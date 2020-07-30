class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let str = Array(word)
        
        if str.count >= 3 {
            let first = str[0].isUppercase
            var set = Set<Bool>()

            if !first {
                for i in 1..<str.count {
                    set.insert(str[i].isUppercase)
                }
                if !first && set.count == 1 && set.contains(false) {
                    return true
                } else {
                    return false
                }
            } else if first {
                let second = str[1].isUppercase
                var set = Set<Bool>()
                for i in 2..<str.count {
                    set.insert(str[i].isUppercase)
                }
                if second && set.count == 1 && set.contains(true) {
                    return true
                } else if !second && set.count == 1 && set.contains(false) {
                    return true
                } else { return false }
            }
        } else if str.count == 2 {
            if str[0].isUppercase == str[1].isUppercase {
                return true
            } else if str[0].isLowercase == str[1].isLowercase {
                return true
            } else if str[0].isUppercase == true && str[1].isUppercase == false {
                return true
            } else {
                return false
            }
        }
        return true
    }
}


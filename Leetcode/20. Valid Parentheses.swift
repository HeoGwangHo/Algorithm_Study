class Solution {
    func isValid(_ s: String) -> Bool {
        var str = [Character]()
        
        for i in s {
            
            if i == "(" || i == "{" || i == "[" {
                str.append(i)
            } else if i == ")" && !str.isEmpty && str.last == "(" {
                str.removeLast()
            } else if i == "}" && !str.isEmpty && str.last == "{" {
                str.removeLast()
            } else if i == "]" && !str.isEmpty && str.last == "[" {
                str.removeLast()
            } else {
                return false
            }
        }
        
        if str.isEmpty {
            return true
        }
        
        return false
    }
}


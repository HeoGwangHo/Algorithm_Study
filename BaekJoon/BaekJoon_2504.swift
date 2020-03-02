import Foundation

let input = readLine()
let s = Array(input!)

var sum = 0, temp = 1
var str:[String] = []

for i in 0..<s.count {
    switch s[i] {
    case "[":
        str.append(String(s[i]))
        temp *= 3
    case "(":
        str.append(String(s[i]))
        temp *= 2
    case "]":
        if (str.isEmpty) {
            sum = 0
            continue
        }
        if (str.last == "[") {
            if(s[i - 1] != "]" && s[i - 1] != ")") {
                sum += temp
            }
            _ = str.popLast()
        } else {
            sum = 0
            continue
        }
        temp /= 3
        break
    case ")":
        if (str.isEmpty) {
            sum = 0
            continue
        }
        if (str.last == "(") {
            if(s[i - 1] != "]" && s[i - 1] != ")") {
                sum += temp
            }
            _ = str.popLast()
        } else {
            sum = 0
            continue
        }
        temp /= 2
        break
    default:
        print(sum)
    }
}
if (!str.isEmpty) {
    sum = 0
}
print(sum)

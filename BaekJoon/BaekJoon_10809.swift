// MARK: - 알파벳 찾기
let s = Array(String(readLine()!))
var numArray = [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]
var strArray: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var ans = ""

for i in 0..<s.count {
    for j in 0..<strArray.count {
        if s[i] == strArray[j] && numArray[j] == -1 {
            numArray[j] = i
        }
    }
}

for i in numArray {
    ans += "\(i) "
}

print(ans)

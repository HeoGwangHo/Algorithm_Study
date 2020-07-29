// MARK: - 다이얼
var str = Array(readLine()!)
var ans = 0

for i in 0..<str.count {
    let n = str[i]
    switch n {
    case "A", "B", "C":
        ans += 2
    case "D", "E", "F":
        ans += 3
    case "G", "H", "I":
        ans += 4
    case "J", "K", "L":
        ans += 5
    case "M", "N", "O":
        ans += 6
    case "P", "Q", "R", "S":
        ans += 7
    case "T", "U", "V":
        ans += 8
    default:
        ans += 9
    }
}

print(ans + str.count)

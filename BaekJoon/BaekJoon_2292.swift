// MARK: - 벌집
let n = Int(readLine()!)!
var ans = 1

for i in 1...n {
    ans += (i - 1) * 6
    if n <= ans {
        print(i)
        break
    }
}

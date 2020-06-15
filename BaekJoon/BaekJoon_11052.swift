// MARK: 카드 구매하기
var N = Int(readLine()!)!
var pac = readLine()!.split(separator: " ").compactMap{Int($0)}
var dp = Array(repeating: 0, count: N + 1)
pac.insert(0, at: 0)

for i in 1..<pac.count {
    for j in 1...i {
        dp[i] = max(dp[i], dp[i - j] + pac[j])
    }
}
print(dp[N])

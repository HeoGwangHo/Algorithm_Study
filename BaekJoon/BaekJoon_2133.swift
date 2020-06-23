// MARK: 타일
let n = Int(readLine()!)!

if n % 2 == 1 {
    print(0)
} else if n == 2 {
    print(3)
} else {
    var dp = Array(repeating: 0, count: 16)
    dp[1] = 3
    dp[2] = 11
    for i in 2...n / 2 {
        dp[i] = 3 * dp[i - 1] + 2
        for j in stride(from: i - 2, to: 0, by: -1) {
            dp[i] += 2 * dp[j]
        }
    }
    print(dp[n / 2])
}

// MARK: - 가장 긴 증가하는 부분 수열
let n = Int(readLine()!)! // 수열의 크기
let arr = readLine()!.split(separator: " ").compactMap{Int($0)} // 수열 A
var dp = Array(repeating: 0, count: n) // 수열 A에 대한 각각 요소들의 길이를 담아줄 배열

for i in 0..<n {
    dp[i] = 1 // 최소 길이는 자기 자신 1
    for j in 0..<n {
        if arr[i] > arr[j] && dp[j] + 1 > dp[i] {
            dp[i] = dp[j] + 1
        }
    }
}

print(dp.max()!)

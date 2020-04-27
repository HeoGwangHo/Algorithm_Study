import Foundation

let n = Int(readLine()!)!
let ai = readLine()!.split(separator: " ").compactMap{Int($0)}
var result = Array(repeating: 0, count: ai.count)

result[0] = ai[0] // 0번 인덱스까지의 최대합은 0번 값 그 자체

for i in 1..<ai.count {
    // i번 인덱스까지의 최대합은 그 전 까지의 최대 부분합과 i번 값의 합
    // i - 1번까지의 인덱스의 합이 음수면 더하지 않는다
    result[i] = (result[i - 1] > 0 ? result[i - 1] : 0) + ai[i]
}

print(result.reduce(result[0], max))

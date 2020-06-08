// MARK: -ATM
let N = Int(readLine()!)! // 사람의 수
var arr = Array(readLine()!.split(separator: " ").compactMap{Int($0)}) // 사람들 마다 걸리는 시간
var sum = 0
var answer = 0

for _ in 0..<arr.count {
    var min = 1001
    var num = 0
    for j in 0..<arr.count {
        if arr[j] < min {
            min = arr[j]
            num = j
        }
    }
    arr.remove(at: num)
    sum += min
    answer += sum
}
print(answer)

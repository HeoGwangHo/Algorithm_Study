// MARK: 로프
let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N)
var answer = 0

for i in 0..<N {
    arr[i] = Int(readLine()!)!
}

arr.sort(by: >)

for i in 1..<N {
    answer = max(answer, arr[i - 1] * i)
}
print(answer)

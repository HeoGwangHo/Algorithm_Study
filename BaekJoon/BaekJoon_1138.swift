// MARK: 한줄로 서기
let N = Int(readLine()!)! // 사람의 수
var arr = Array(readLine()!.split(separator: " ").compactMap{Int($0)})
var answer = Array(repeating:0, count: N)

for i in 0..<N {
    var num = arr[i] // 왼쪽에 자신보다 큰 사람의 수
    // num이 0이 될 때까지 감소시키면서 자리를 이동
    for j in 0..<N {
        if num == 0 && answer[j] == 0 {
            answer[j] = i + 1
            break
        } else if answer[j] == 0 {
            num -= 1
        }
    }
}
print(answer.compactMap{String($0)}.joined(separator: " "))

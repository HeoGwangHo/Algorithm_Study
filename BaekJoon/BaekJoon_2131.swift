// MARK: - 분해합
let n = Int(readLine()!)! // 입력
var ans = 0 // 정답 변수

for i in 1..<n { // 1 ~ n 까지 돌면서 확인
    var sum = i
    var part = i
    
    // sum에 i와 i의 자리수를 더한 값 +
    while part > 0 {
        sum += part % 10
        part /= 10
    }
    
    if n == sum {
        ans = i
        break
    }
}
print(ans)

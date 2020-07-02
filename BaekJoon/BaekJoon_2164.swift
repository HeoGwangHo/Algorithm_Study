// MARK: 카드2
let n = Int(readLine()!)!
var arr = [0, 1, 2] // 결과값을 저장할 배열
var idx = 2 // 주기

// 미리 결과값을 배열에 저장
while arr.count < 500000 {
    var num = 2
    for _ in 1...idx {
        arr.append(num)
        num += 2
    }
    idx *= 2
}
print(arr[n]) // 정답 출력

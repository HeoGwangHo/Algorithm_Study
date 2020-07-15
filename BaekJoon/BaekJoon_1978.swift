// MARK: - 소수 찾기
let n = Int(readLine()!)!
let line = readLine()!.split(separator: " ").compactMap{Int($0)}
var arr = [Int](0...1000) // 0 ~ 1000 까지 배열 생성
var ans = 0 // 정답 변수
arr[1] = 0 // arr배열의 1을 0으로 만들어줌

for i in 2..<arr.count { // 배열에서 소수만 남기고 0으로
    if arr[i] == 0 { // 0 이면 다음으로 넘어감
        continue
    }

    for j in stride(from: i + i, to: arr.count, by: i) { // i를 제외한 배수들을 0으로 만들어줌
        arr[j] = 0
    }
}

for i in line {
    if arr.contains(i) {
        ans += 1
    }
}

print(ans)

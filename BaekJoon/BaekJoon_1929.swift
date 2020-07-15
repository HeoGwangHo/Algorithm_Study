// MARK: - 소수 구하기
let line = readLine()!.split(separator: " ").compactMap{Int($0)}
var arr = [Int](0...line[1]) // 범위만큼 배열 생성

for i in 2..<arr.count {
    if arr[i] == 0 { // 0 이면 다음으로 넘어감
        continue
    }

    for j in stride(from: i + i, to: arr.count, by: i) { // i를 제외한 배수들을 0으로 만들어줌
        arr[j] = 0
    }
}

for i in arr {
    if i != 0 && i >= line[0] && i != 1 {
        print(i)
    }
}

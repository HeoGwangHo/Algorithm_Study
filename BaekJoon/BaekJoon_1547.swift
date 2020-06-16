// MARK: 공
let N = Int(readLine()!)! // 횟수
var arr = [0, 1, 2, 3] // 초기 컵의 위치 공은 1번 컵에 있다

// swap
for _ in 1...N {
    var temp = 0
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    temp = arr[line[0]]
    arr[line[0]] = arr[line[1]]
    arr[line[1]] = temp
}

for i in 1...3 {
    if arr[i] == 1 {
        print(i)
    }
}

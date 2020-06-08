// MARK: 회의실 배정
struct Index {
    var start: Int
    var end: Int
}

let N = Int(readLine()!)!
var arr = [Index]()
var answer = 1

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    arr.append(Index(start: line[0], end: line[1]))
}
arr.sort { $0.end == $1.end ? $0.start < $1.start : $0.end < $1.end } // 끝나는시간이 짧은 순으로 정렬 + 끝나는 시간이 같을 경우 시작시간이 빠른것 순으로
var num = arr[0]

for i in 1..<arr.count {
    if num.end <= arr[i].start {
        num = arr[i]
        answer += 1
    }
}

print(answer)

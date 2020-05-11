// MARK: 덩치
import Foundation

struct Physical {
    var m: Int // 몸무게
    var k: Int // 키
}

let n = Int(readLine()!)! // 사람의 수
var arr = [Physical]() // 몸무게와 키를 담아줄 배열
var result = Array(repeating: n, count: n) // 등수를 담아줄 배열

// 입력받은 대로 arr배열에 append
for _ in 0..<n {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    arr.append(Physical(m: line[0], k: line[1]))
}

for i in 0..<n-1 {
    for j in i+1..<n {
        if arr[i].k > arr[j].k && arr[i].m > arr[j].m { // 키와 몸무게 둘 다 큰 경우
            result[i] -= 1
        } else if arr[i].k < arr[j].k && arr[i].m < arr[j].m { // 둘 다 작은 경우
            result[j] -= 1
        } else { // 등수를 매길 수 없는 경우
            result[i] -= 1
            result[j] -= 1
        }
    }
}

for i in 0..<result.count {
    print(result[i], terminator: " ")
}


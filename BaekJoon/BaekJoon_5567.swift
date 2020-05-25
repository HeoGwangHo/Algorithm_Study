// MARK: 결혼식
import Foundation

let n = Int(readLine()!)! // 동기의 수
let m = Int(readLine()!)! // 리스트의 길이
var map = Array(repeating: Array(repeating: 0, count: n), count: n) // 친구관계를 담을 2차원 배열
var visited = Array(repeating: false, count: n) // 방문표시
var count = 0, answer = 0

// 친구들간의 관계를 표시할 인접 행렬
for _ in 0..<m {
    let line = readLine()?.split(separator: " ").compactMap{Int($0)}
    map[line![0] - 1][line![1] - 1] = 1
    map[line![1] - 1][line![0] - 1] = 1
}

DFS(num: 0, count: 0) // 자기자신 기준이므로 1번만 호출

func DFS(num: Int, count: Int) {
    visited[num] = true
    
    // 관계가 2를 넘어가면 친구가 아니므로 리턴
    if count == 2 {
        return
    }
    
    for i in 0..<n {
        if map[num][i] == 1 {
            DFS(num: i, count: count + 1)
        }
    }
}

// 자기 자신을 제외한 친구를 ++
for i in 1..<n {
    if visited[i]{
        answer += 1
    }
}

print(answer)

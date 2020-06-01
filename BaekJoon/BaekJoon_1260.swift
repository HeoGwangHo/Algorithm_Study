// MARK: DFS와 BFS
let nmv = readLine()!.split(separator: " ").compactMap{Int($0)} // 첫번째 줄 입력
let N = nmv[0] // 정점의 개수
let M = nmv[1] // 간선의 개수
let V = nmv[2] // 시작 정점의 번호
var map = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1) // 인접 행렬
var visited = Array(repeating: false, count: N + 1) // 방문표시

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    map[line[0]][line[1]] = 1
    map[line[1]][line[0]] = 1
}

func DFS(num: Int, count: Int) {
    visited[num] = true
    print(num, terminator: " ")
    
    if count == N + 1 {
        return
    }
    
    for i in 0..<map[0].count {
        if map[num][i] == 1 && !visited[i] {
            DFS(num: i, count: count + 1)
        }
    }
}

func BFS(map: [[Int]]) {
    visited = Array(repeating: false, count: N + 1) // 방문표시 초기화
    var que = [Int]()
    var idx = 0
    
    que.append(V)
    visited[que[0]] = true
    
    while idx < que.count {
        let current = que[idx]
        
        print(current, terminator: " ")
        for i in 0..<map[0].count{
            if map[current][i] == 1 && !visited[i]{
                que.append(i)
                visited[i] = true
            }
        }
        idx += 1
    }
}

DFS(num: V, count: 0) // V = 시작 정점, 카운트는 0부터
print() // 줄바꿈
BFS(map: map)

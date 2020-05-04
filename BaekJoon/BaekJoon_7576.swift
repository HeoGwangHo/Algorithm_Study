import Foundation

struct Point {
    var x: Int
    var y: Int
}

func BFS(_ : [[Int]]) {
    let dx = [1, -1, 0, 0] , dy = [0, 0, 1, -1]
    
    var idx = 0
    var que = [Point]()
    
    // 시작 좌표들을 que에 넣어줌
    for i in 0..<start.count {
        que.append(Point(x: start[i].x, y: start[i].y))
    }
    
    while idx < que.count {
        let current = que[idx]
        
        for i in 0..<4 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            
            if 0 <= nx && nx < map.count && 0 <= ny && ny < map[0].count {
                if map[nx][ny] == 0 {
                    map[nx][ny] = map[current.x][current.y] + 1 // 현재 좌표의 값 += 1
                    que.append(Point(x: nx, y: ny))
                    if max < map[nx][ny] {
                        max = map[nx][ny]
                    }
                }
            }
        }
        idx += 1
    }
}

let input = Array(readLine()!.split(separator: " ").map{Int($0)}) // M, N
var map = Array(repeating: Array(repeating: 0, count: input[0]!), count: input[1]!) // 토마토 상자
var max = 1
var start = [Point]() // 시작 좌표

// 토마토 상태 입력
for i in 0..<input[1]! {
    let line = Array(readLine()!.split(separator: " "))
    let arr = line.compactMap{Int(String($0))}
    for j in 0..<input[0]! {
        map[i][j] = arr[j]
    }
}

// 토마토의 시작 위치 저장
for x in 0..<input[1]! {
    for y in 0..<input[0]! {
        if map[x][y] == 1 {
            start.append(Point(x: x, y: y))
        }
    }
}

//BFS실행
BFS(map)

// BFS가 끝난 후 조건에 따라 맞는 결과 출력
let arr = Array(map.joined()) // 2차원 배열 map를 1차원으로 변경


for i in 0..<arr.count {
    // 배열에 0이 있을 경우 -1 출력
    if arr[i] == 0 {
        print(-1)
        break
    }
    
    if i == arr.count - 1{
        print(max - 1)
    }
}



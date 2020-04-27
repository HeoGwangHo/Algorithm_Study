import Foundation

struct Point {
    var x: Int
    var y: Int
}

func BFS(_: [[Int]], x: Int, y: Int) {
    let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]
    
    var idx = 0
    var que = [Point]()
    
    que.append(Point(x: x, y: y))
    map[x][y] = 0
    
    while(idx < que.count) {
        let current = que[idx]
        
        for i in 0..<4 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            
            if nx < 0 || nx >= map.count || ny < 0 || ny >= map[0].count {
                continue
            }
            if map[nx][ny] == 0 {
                continue
            }
            
            map[nx][ny] = 0
            que.append(Point(x: nx, y: ny))
        }
        idx += 1
    }
    num.append(idx)
}

let N = Int(readLine()!)! // 지도의 크기
var map = Array(repeating: Array(repeating: 0, count: N), count: N) // 지도를 나타내는 NxN 크기의 2차원 배열
var count = 0 // 총 단지수
var num = [Int]() // 각 단지내 집의 수

// 입력받은대로 지도에 단지 표시
for i in 0..<N {
    let input = Array(readLine()!)
    let arr = input.compactMap{Int(String($0))}
    for j in 0..<N {
        map[i][j] = arr[j]
    }
}

for x in 0..<N {
    for y in 0..<N {
        if map[x][y] == 1 {
            BFS(map, x: x, y: y)
            count += 1
        }
    }
}

print(count)
num.sort()
for i in 0..<num.count {
    print(num[i])
}


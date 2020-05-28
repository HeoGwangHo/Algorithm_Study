// MARK: 연구소
import Foundation

struct Point {
    var x: Int?
    var y: Int?
}

let input = readLine()!.split(separator: " ").compactMap{Int($0)}
var map = Array(repeating: Array(repeating: 0, count: input[1]), count: input[0])
var mapcopy = [[Int]]()
var start = [Point]()
var answer = 0

func Combination(count: Int, cur: Int) {
    
    if count == 3 {
        BFS()
        return
    }

    for c in cur..<map.count * map[0].count {
        let i = c / map[0].count
        let j = c % map[0].count
        
        if map[i][j] == 0 {
            map[i][j] = 1
            
            Combination(count: count + 1, cur: c + 1)
            
            map[i][j] = 0
        }
    }
}

func BFS() {
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, 1, -1]
    var count = 0
    var que = [Point]()
    mapcopy = map
    var idx = 0
    
    for i in 0..<start.count {
        que.append(start[i])
    }

    while idx < que.count {
        let current = que[idx]

        for i in 0..<4 {
            let nx = current.x! + dx[i]
            let ny = current.y! + dy[i]
            
            if nx >= 0 && nx < map.count && ny >= 0 && ny < map[0].count {
                if mapcopy[nx][ny] == 0 {
                    mapcopy[nx][ny] = 2
                    que.append(Point(x: nx, y: ny))
                }
            }
        }
        idx += 1
    }
    
    for i in 0..<input[0] {
        for j in 0..<input[1] {
            if mapcopy[i][j] == 0 {
                count += 1
            }
        }
    }
    
    answer = max(answer, count)
}

for i in 0..<input[0] {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    for j in 0..<input[1] {
        map[i][j] = line[j]
        
        if line[j] == 2 {
            start.append(Point(x: i, y: j))
        }
    }
}

Combination(count: 0, cur: 0)

print(answer)

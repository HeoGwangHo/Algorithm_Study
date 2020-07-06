struct Point {
    let x: Int
    let y: Int
}

class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]
        var start = [Point]()
        var map = grid
        for i in 0..<map.count {
            for j in 0..<map[0].count {
                if map[i][j] == 2 {
                    start.append(Point(x: i, y: j))
                }
            }
        }
        
        while !start.isEmpty {
            let current = start.removeFirst()
            
            for i in 0..<4 {
                let nx = current.x + dx[i]
                let ny = current.y + dy[i]
                if nx >= 0 && nx < map.count && ny >= 0 && ny < map[0].count {
                    if map[nx][ny] == 1 {
                        map[nx][ny] = map[current.x][current.y] + 1
                        start.append(Point(x: nx, y: ny))
                    }
                }
            }
        }
        if map.joined().contains(1) {
            return -1
        } else if !map.joined().contains(2) {
            return 0
        }
        return map.joined().max()! - 2
    }
}

// MARK: 탈출
let rc = readLine()!.split(separator: " ").compactMap{Int($0)}
var map = Array(repeating: Array(repeating: "", count: rc[1]), count: rc[0])
let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]
var spoint: [(x: Int, y: Int)] = [] // 고슴도치의 위치
var water: [(x: Int, y: Int)] = [] // 물의 위치

func WBFS() { // 물
    for _ in 0..<water.count {
        let current = water.removeFirst()
        
        for i in 0..<4 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]

            if nx >= 0 && nx < map.count && ny >= 0 && ny < map[0].count {
                if map[nx][ny] == "." {
                    map[nx][ny] = "*"
                    water.append((x: nx, y: ny))
                }
            }
        }
    }
}

func SBFS() -> Bool { // 고슴도치
    for _ in 0..<spoint.count {
        let current = spoint.removeFirst()
        
        for i in 0..<4 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            
            if nx >= 0 && nx < map.count && ny >= 0 && ny < map[0].count {
                if map[nx][ny] == "D" {
                    spoint.append((x: nx, y: ny))
                    return true
                }
                
                if map[nx][ny] == "." {
                    map[nx][ny] = "S"
                    spoint.append((x: nx, y: ny))
                }
            }
        }
    }
    return false
}

for i in 0..<rc[0] { // 맵 입력받으면서 물과 고슴도치 시작 위치 확인
    let line = Array(readLine()!)
    for j in 0..<rc[1] {
        map[i][j] = String(line[j])
        if line[j] == "S" {
            spoint.append((x: i, y: j))
        } else if line[j] == "*" {
            water.append((x: i, y: j))
        }
    }
}

var ans = 0
while true {
    ans += 1
    if spoint.count == 0 {
        print("KAKTUS")
        break
    }
    WBFS()
    if SBFS() {
        print(ans)
        break
    }
}

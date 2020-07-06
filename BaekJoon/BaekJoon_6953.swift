// MARK: 상범 빌딩
struct Point {
    let x: Int
    let y: Int
    let z: Int
}

while true { // 0 0 0이 입력될 때까지 무한 루프
    let lrc = readLine()!.split(separator: " ").compactMap{Int($0)}
    var arr = [[[String]]]()
    var str = [[String]]()
    if lrc == [0, 0, 0] {
        break
    }

    // 3차원 배열에 담아줌
    for _ in 0..<lrc[0] * lrc[1] + lrc[0] {
        let line = Array(readLine()!.compactMap{String($0)})
        if line.isEmpty {
            continue
        }
        str.append(line)
        if str.count == lrc[1] {
            arr.append(str)
            str.removeAll()
        }
    }
    print(BFS(map: arr))
}

func BFS(map: [[[String]]]) -> String {
    let dx = [1, -1, 0, 0, 0, 0], dy = [0, 0, 1, -1, 0, 0], dz = [0, 0, 0, 0, 1, -1]
    var visited = Array(repeating: Array(repeating: Array(repeating: 0, count: 31), count: 31), count: 31)
    var start = [Point]()
    
    for i in 0..<map.count { // 시작위치를 찾는다
        for j in 0..<map[0].count {
            for k in 0..<map[0][0].count {
                if map[i][j][k] == "S" {
                    start.append(Point(x: i, y: j, z: k))
                }
            }
        }
    }

    while !start.isEmpty {
        let current = start.removeFirst()
        for i in 0..<6 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            let nz = current.z + dz[i]
            if nx >= 0 && nx < map.count && ny >= 0 && ny < map[0].count && nz >= 0 && nz < map[0][0].count && visited[nx][ny][nz] == 0 {
                if map[nx][ny][nz] == "." {
                    start.append(Point(x: nx, y: ny, z: nz))
                    visited[nx][ny][nz] = visited[current.x][current.y][current.z] + 1
                } else if map[nx][ny][nz] == "E" {
                    return "Escaped in \(visited[current.x][current.y][current.z] + 1) minute(s)."
                }
            }
        }
    }
    return "Trapped!"
}


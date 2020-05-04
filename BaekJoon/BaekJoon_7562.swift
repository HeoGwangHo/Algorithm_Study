// MARK: 나이트의 이동
import Foundation

struct Point {
    var x: Int
    var y: Int
}

func BFS(_ : [[Int]], location: [Point]) {
    let dx = [2, 1, -1, -2, -2, -1, 1, 2], dy = [1, 2, 2, 1, -1, -2, -2, -1]
    
    var idx = 0
    var que = [Point]()
    
    que.append(Point(x: location[0].x, y: location[0].y))
    map[location[0].x][location[0].y] = 1 // 현재 나이트의 위치를 1로 바꿔줌
    
    while idx < que.count {
        let current = que[idx]
        
        for i in 0..<8 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            
            if nx >= 0 && nx < map.count && ny >= 0 && ny < map[0].count {
                if map[nx][ny] == 0 {
                    map[nx][ny] = map[current.x][current.y] + 1
                    que.append(Point(x: nx, y: ny))
                    
                    // 도착하려는 위치에 도달하면 함수 종료
                    if nx == location[1].x && ny == location[1].y{
                        return
                    }
                }
            }
        }
        idx += 1
    }
}

let TestCase = Int(readLine()!)! // 테스트 케이스의 갯수
var i = 0 // 테스트 케이스 반복 횟수
var map = [[Int]]() // 체스판의 크기를 담을 2차원 배열

// 테스트 케이스 만큼 반복
while i < TestCase {
    var location = [Point]() // 현재 있는 칸과 이동하려는 칸 저장
    let I = Int(readLine()!)! // 체스판의 길이
    map = Array(repeating: Array(repeating: 0, count: I), count: I) // 체스판의 길이만큼 초기화
    
    // 현재와 이동하려는 칸을 입력받아서 location에 저장
    for _ in 0..<2 {
        let line = Array(readLine()!.split(separator: " "))
        let arr = line.map{Int($0)}
        location.append(Point(x: arr[0]!, y: arr[1]!))
    }
    
    // BFS실행 후 결과 출력
    BFS(map, location: location)
    print(map[location[1].x][location[1].y] - 1)
    
    i += 1
}


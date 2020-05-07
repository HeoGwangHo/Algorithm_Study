// MARK: Puyo Puyo
import Foundation

struct Point {
    var x: Int
    var y: Int
}

func BFS(_ : [[String]], x: Int, y: Int, ch: String) {
    let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]
    
    var idx = 0
    var que = [Point]()
    
    que.append(Point(x: x, y: y))
    arr.append(Point(x: x, y: y))
    visit[x][y] = 1
    
    while idx < que.count {
        let current = que[idx]
        
        for i in 0..<4 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            
            if 0 <= nx && nx < map.count && 0 <= ny && ny < map[0].count {
                if (ch == map[nx][ny]) && (visit[nx][ny] == 0) {
                    visit[nx][ny] = 1
                    que.append(Point(x: nx, y: ny))
                    arr.append(Point(x: nx, y: ny))
                }
            }
        }
        idx += 1
    }
    
    // 같은 뿌요가 4개 이상일 경우 arr에 담긴 뿌요들의 좌표를 이용해 map에서 "."으로 바꿔줌
    if arr.count >= 4{
        isPossible = true
        
        for i in 0..<arr.count {
            map[arr[i].x][arr[i].y] = "."
        }
        
    }
    arr.removeAll()
    
}



var map = Array(repeating: Array(repeating: "", count: 6), count: 12) // 맵의 크기만큼 2차원 배열 생성
var visit = Array(repeating: Array(repeating: 0, count: 6), count: 12) // 방문표시
var arr = [Point]() // 같은 뿌요들의 좌표
var isPossible = true
var answer = 0 // 결과 출력

// 맵의 형태를 입력 받음
for i in 0..<12 {
    let line = Array(readLine()!)
    let arr = line.map{String($0)}
    for j in 0..<6 {
        map[i][j] = arr[j]
    }
}

// 뿌요를 터트릴 수 있는 만큼 반복문을 반복
while isPossible {
    isPossible = false
    visit = Array(repeating: Array(repeating: 0, count: 6), count: 12) // 방문표시 초기화
    
    // 맵을 돌면서 "."이 아닌 알파벳을 만나면 BFS실행
    for x in 0..<12 {
        for y in 0..<6 {
            if map[x][y] != "." && visit[x][y] == 0 {
                BFS(map, x: x, y: y, ch: map[x][y])
            }
        }
    }
    
    //
    if isPossible {
        answer += 1
        
        // 맵의 열을 돌면서 "."이 아닌 알파벳일 경우 배열에 넣고 밑으로 내려 줌
        for y in 0..<6 {
            var str = [String]()
            
            for x in (0...11).reversed() {
                if map[x][y] != "." {
                    str.append(map[x][y])
                }
            }
            
            for x in 0..<12 {
                if x < str.count{
                    map[11 - x][y] = str[x]
                } else {
                    map[11 - x][y] = "."
                }
            }
        }
    }
}

print(answer)

import Foundation

struct Point {
    var x: Int
    var y: Int
}

func BFS(_ : [[Int]], x: Int, y: Int, k: Int) {
    let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]
    
    var idx = 0
    var que = [Point]()
    
    que.append(Point(x: x, y: y))
    visit[x][y] = 1
    
    while idx < que.count {
        let current = que[idx]
        
        for i in 0..<4 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            
            if 0 <= nx && nx < N && 0 <= ny && ny < N{
                if(visit[nx][ny] == 0 && map[nx][ny] >= k){
                    visit[nx][ny] = 1
                    que.append(Point(x: nx, y: ny))
                }
            }
        }
        idx += 1
    }
}

let N = Int(readLine()!)! // 배열의 행과 열
var map = Array(repeating: Array(repeating: 0, count: N), count: N) // 높이 정보를 담을 배열
var visit = Array(repeating: Array(repeating: 0, count: N), count: N) // 방문표시

var answer = 0, max = 0

// 입력받은 대로 배열에 대입
for i in 0..<N {
    let input = Array(readLine()!.split(separator: " "))
    let arr = input.compactMap{Int(String($0))}
    for j in 0..<N {
        map[i][j] = arr[j]
        
        if max < map[i][j] {
            max = map[i][j]
        }
    }
}

// 높이를 증가시키면서 최대값 구하기
for k in 0...max{
    visit = Array(repeating: Array(repeating: 0, count: N), count: N)
    var temp = 0
    // 배열을 검색 하면서 4이상일 경우 함수 실행
    for x in 0..<N {
        for y in 0..<N {
            if map[x][y] >= k && visit[x][y] == 0 {
                BFS(map, x: x, y: y, k: k)
                temp += 1
            }
        }
    }

    if answer < temp{
        answer = temp
    }
}
print(answer)



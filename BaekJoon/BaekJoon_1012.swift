import Foundation

struct Point{
    var x: Int
    var y: Int

}

func BFS(_: [[Int]], x: Int, y: Int) {
    let dx = [1, -1, 0 ,0], dy = [0, 0, 1, -1]
    
    var idx = 0
    var que = [Point]()
    
    que.append(Point(x: x, y: y))
    map[x][y] = 0
    
    while(idx < que.count){
        let current = que[idx]
        
        for i in 0..<4 {
            let nx = current.x + dx[i]
            let ny = current.y + dy[i]
            
            if nx < 0 || nx >= map.count || ny < 0 || ny >= map[0].count{
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
}

let testcase = Int(readLine()!)! // 테스트 케이스 T
var M:Int, N:Int // 가로, 세로 길이
var map = [[Int]]() // 배추밭의 배열
var count:Int // 필요한 지렁이 마릿 수

for _ in 0..<testcase {
    let input = readLine()?.split(separator: " ").map{Int($0)} // 두번 째줄 입력
    M = input![0]! // 가로길이 M
    N = input![1]! // 세로길이 N
    count = 0
    map = Array(repeating: Array(repeating: 0, count: M), count: N) // 입력받은 가로 세로 길이만큼 0으로 초기화
    
    for _ in 0..<input![2]! {
        let point = readLine()?.split(separator: " ").map{Int($0)}
        map[point![1]!][point![0]!] = 1 // 입력받은 위치를 1로 변경
    }
    
    for x in 0..<N {
        for y in 0..<M {
            if (map[x][y] == 1) {
                BFS(map, x: x, y: y)
                count += 1
            }
        }
    }
    print(count)
}


import Foundation

struct Point{
    var x: Int
    var y: Int

}

let input = readLine()?.split(separator: " ").map{Int($0)} //초기값
var miro = Array(repeating: Array(repeating: 0, count: (input![1])!), count: (input![0])!) // 빈 2차원 배열
var visit = Array(repeating: Array(repeating: 0, count: (input![1])!), count: (input![0])!) // 방문표시

for index in 0..<input![0]! {
    let str = Array(readLine()!)
    let arr = str.compactMap {Int(String($0))}
    for i in 0..<input![1]! {
        miro[index][i] = arr[i]
    }
}

let dx = [1, -1, 0 ,0]
let dy = [0, 0, 1, -1]
visit[0][0] = 1

var que: [Point] = []
que.append(Point(x: 0, y: 0))

while(!que.isEmpty){
    let cur = que.removeFirst()
    
    for i in 0..<4 {
        let nx = cur.x + dx[i]
        let ny = cur.y + dy[i]
        
        if (0 <= nx && nx < input![0]! && 0 <= ny && ny < input![1]!){
            if(visit[nx][ny] == 0 && miro[nx][ny] != 0) {
                visit[nx][ny] = 1
                que.append(Point(x: nx, y: ny))
                miro[nx][ny] = miro[cur.x][cur.y] + 1
            }
        }
    }
}
print(miro[input![0]! - 1][input![1]! - 1])

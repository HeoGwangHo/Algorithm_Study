// MARK: 숨바꼭질
import Foundation

let input = readLine()!.split(separator: " ").compactMap{Int($0)}
let n = input[0] // 수빈이의 위치
let m = input[1] // 동생의 위치
var visited = Array(repeating: 0, count: 100001) // 방문 표시

func BFS() {
    var time = 0 // 몇초만에 찾는지 count변수
    var que = [Int]() // 큐역할을 할 변수
    
    que.append(n)
    visited[n] = 1
    
    while true {
        let count = que.count
        
        // que의 사이즈 만큼 for 루프 반복
        for _ in 0..<count {
            let cur = que.removeFirst()
            
            if cur == m {
                print(time)
                return
            }
            if cur > 0 && visited[cur - 1] == 0 {
                que.append(cur - 1)
                visited[cur - 1] = 1
            }
            if cur < 100000 && visited[cur + 1] == 0 {
                que.append(cur + 1)
                visited[cur + 1] = 1
            }
            if cur * 2 <= 100000 && visited[cur * 2] == 0 {
                que.append(cur * 2)
                visited[cur * 2] = 1
            }
        }
        
        time += 1
    }
    
}

BFS()

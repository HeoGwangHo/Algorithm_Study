import Foundation

let MAX = (10000 * 10000) + 1 //최대값
let N = Int(readLine()!)! //도시의 갯수(노드)
let M = Int(readLine()!)! //버스의 갯수(간선)
var arr: [[Int]] = Array(repeating: Array(repeating: Int(MAX), count: N + 1), count: N + 1) //버스의 정보
var dist: [Int] = Array(repeating: Int(MAX), count: N + 1) //가중치

// MARK: 도시들 간의 거리 입력받기
for _ in 0..<M {
    let str = readLine()!.split(separator: " ")
    let s = Int(str[0])!
    let e = Int(str[1])!
    let v = Int(str[2])!
    
    arr[s][e] = arr[s][e] > v ? v : arr[s][e]
}

// MARK: 구하고자 하는 경로
let str2 = readLine()!.split(separator: " ")
let start = Int(str2[0])!
let end = Int(str2[1])!
var pq = [start]

dist[start] = 0

while (!pq.isEmpty) {
    let from = pq.removeFirst()
    
    for i in 1...N {
        if arr[from][i] == MAX {
            continue
        }
        
        if dist[i] == MAX || dist[i] > dist[from] + arr[from][i] {
            dist[i] = dist[from] + arr[from][i]
            pq.append(i)
        }
        
    }
}

print(dist[end])

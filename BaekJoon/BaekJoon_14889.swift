// MARK: 스타트와 링크
import Foundation

let n = Int(readLine()!)! // 사람의 수
var map = Array(repeating: Array(repeating: 0, count: n), count: n) // n x n 크기의 배열 생성
var start = Array(repeating: 0, count: n / 2)
var link = Array(repeating: 0, count: n / 2)
var answer = [Int]()

// 입력받는대로 배열에 저장
for i in 0..<n {
    let line = readLine()?.split(separator: " ").compactMap{Int($0)}
    for j in 0..<n {
        map[i][j] = line![j]
    }
}

// 함수 실행
Combination(start: start, link: link, num: 0, sidx: 0, lidx: 0)
print(answer.min()!) // 배열의 값들 중 최솟값 출력

func Combination(start: [Int], link: [Int], num: Int, sidx: Int, lidx: Int) {
    let sidx = sidx
    let lidx = lidx
    var start = start
    var link = link
    
    if num == n {
        var s = 0, l = 0
        
        for i in 0..<n/2 {
            for j in 0..<n/2 {
                s += map[start[i]][start[j]]
                l += map[link[i]][link[j]]
            }
        }
        answer.append(abs(s - l)) // s 와 l의 차이의 절대값
        return
    }
    
    if sidx < n/2 {
        start[sidx] = num
        Combination(start: start, link: link, num: num + 1, sidx: sidx + 1, lidx: lidx)
    }
    
    if lidx < n/2 {
        link[lidx] = num
        Combination(start: start, link: link, num: num + 1, sidx: sidx, lidx: lidx + 1)
    }
    
    
}


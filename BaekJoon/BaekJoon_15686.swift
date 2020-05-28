// MARK: 치킨 배달
import Foundation

struct Point {
    var x: Int?
    var y: Int?
}

let input = readLine()!.split(separator: " ").compactMap{Int($0)} // N 과 M
let N = input[0] + 1
let M = input[1]
var map = Array(repeating: Array(repeating: 0, count: N), count: N)
var arr = [Int]()
var start = [Point]()
var answer = Int.max

var selectchicken = [Point]()
var chickenstore = [Point]()
var home = [Point]()

for i in 1..<N {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    for j in 1..<N {
        map[i][j] = line[j - 1]
        
        if map[i][j] == 2{
            chickenstore.append(Point(x: i, y: j))
        } else if map[i][j] == 1{
            home.append(Point(x: i, y: j))
        }
    }
}

func Combination(count: Int, chidx: Int) {
    if count == M {
        solution()
        return
    }
    
    if chidx == chickenstore.count{
        return
    }
    selectchicken.append(chickenstore[chidx])
    Combination(count: count + 1, chidx: chidx + 1)
    selectchicken.removeLast()
    Combination(count: count, chidx: chidx + 1)
}

func solution() {
    var sum = 0
    for i in 0..<home.count{
        var dist = Int.max
        
        for j in 0..<M{
            dist = min(dist, abs(home[i].x! - selectchicken[j].x!) + abs(home[i].y! - selectchicken[j].y!))
        }
        sum += dist
    }
    answer = min(answer, sum)
}

Combination(count: 0, chidx: 0)
print(answer)

// MARK: 좌표 정렬하기
struct Location {
    var x: Int
    var y: Int
}
let n = Int(readLine()!)!
var arr = [Location]()

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    arr.append(Location(x: line[0], y: line[1]))
}

arr = arr.sorted(by: { (d1, d2) -> Bool in
    if d1.x == d2.x {
        return d1.y < d2.y
    } else {
        return d1.x < d2.x
    }
})

for i in 0..<n {
    print(arr[i].x, arr[i].y)
}

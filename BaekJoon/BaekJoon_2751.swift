// MARK: 수 정렬하기 2
let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: n)

for i in 0..<n {
    arr[i] = Int(readLine()!)!
}

arr.sort()

for i in 0..<arr.count {
    print(arr[i])
}

// MARK: 카드1
let n = Int(readLine()!)!
var arr: [Int] = Array(1...n)
var ans: [Int] = []

while arr.count != 1 {
    ans.append(arr.removeFirst())
    arr.append(arr.removeFirst())
}
ans.append(arr.removeFirst())

for i in 0..<ans.count {
    print(ans[i], terminator: " ")
}

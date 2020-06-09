// MARK: 동전 0
let input = readLine()!.split(separator: " ").compactMap{Int($0)}
var arr = [Int]()
var cost = input[1]
var count = 0

for _ in 0..<input[0] {
    arr.append(Int(readLine()!)!)
}
arr.sort(by: >)

while cost > 0 {
    for i in 0..<arr.count {
        if arr[i] <= cost {
            count += cost / arr[i]
            cost %= arr[i]
            break
        }
    }
}
print(count)

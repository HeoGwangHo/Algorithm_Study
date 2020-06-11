// MARK: 계단 오르기
let N = Int(readLine()!)!
var arr = [Int]()
var total = Array(repeating: 0, count: N)

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

if N > 2 {
    total[0] = arr[0]
    total[1] = arr[0] + arr[1]
    total[2] = max(arr[2] + arr[1], arr[0] + arr[2])

    for i in 3..<N {
        total[i] = max(total[i - 2], arr[i - 1] + total[i - 3]) + arr[i]
    }
    print(total[N - 1])
} else if N == 1 {
    print(arr[0])
} else if N == 2 {
    print(arr[0] + arr[1])
}

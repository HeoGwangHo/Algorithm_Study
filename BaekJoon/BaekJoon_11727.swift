// MARK: 2xn 타일링 2
let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N + 2)

arr[1] = 1
arr[2] = 3

if N > 2 {
    for i in 3...N {
        arr[i] = (arr[i - 1] + arr[i - 2] * 2) % 10007
    }
}
print(arr[N])

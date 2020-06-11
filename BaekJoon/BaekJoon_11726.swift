// MARK: 2xn 타일링
let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N)

if N == 1 {
    print(1)
} else {
    arr[0] = 1
    arr[1] = 2
    for i in 2..<N {
        let num = arr[i - 1] + arr[i - 2]
        arr[i] = num % 10007
    }
    print(arr.last!)
}

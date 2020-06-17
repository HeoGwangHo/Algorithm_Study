// MARK: 1로 만들기
let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: n + 1)
arr[1] = 0

if n == 1 { // n이 1이면 0출력
    print(0)
} else {
    for i in 2...n {
        arr[i] = arr[i - 1] + 1
        if i % 2 == 0 {
            arr[i] = min(arr[i], arr[i / 2] + 1)
        }
        if i % 3 == 0 {
            arr[i] = min(arr[i], arr[i / 3] + 1)
        }
    }
    print(arr.last!)
}

// MARK: 30
var N = Array(readLine()!)
var sum = 0

if N.contains("0") {
    N.sort(by: >)
    for i in 0..<N.count {
        sum += Int(String(N[i]))!
    }
    if sum % 3 == 0 {
        print(String(N))
    } else {
        print(-1)
    }
} else {
    print(-1)
}

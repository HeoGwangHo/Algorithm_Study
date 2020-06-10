// MARK: 한수
let N = Int(readLine()!)!

if N < 100 {
    // 1 ~ 99 까지 한수의 갯수는 자기자신
    print(N)
} else {
    var count = 99
    for i in 100...N {
        // 자리수를 나눠줌
        let first = i / 100
        let second = (i % 100) / 10
        let third = (i % 100) % 10
        
        if first - second == second - third {
            count += 1
        }
        
    }
    print(count)
}

import Foundation

var testcase = Int(readLine()!)!
var count:[Int] = []

func plus(_ n:Int) -> Int {
    if n < 0 {
        return 0
    }
    if n == 0 {
        count[n] = 1
        return count[n]
    }
    
    if count[n] != 0 {
        return count[n]
    }
    count[n] = plus(n - 1) + plus(n - 2) + plus(n - 3)
    return count[n]
}

while(testcase > 0) {
    let n = Int(readLine()!)!
    count = [Int](repeating: 0, count: n + 1)
    plus(n)
    print(count[n])
    testcase -= 1
}

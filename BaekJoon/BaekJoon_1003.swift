import Foundation

var testcase = Int(readLine()!)!

while(testcase > 0) {
    let n = Int(readLine()!)!
    var arr = [[Int]](repeating: Array(repeating: 0, count: 2), count: n + 1)
    
    if n == 0 {
        print("1 0")
    } else if n == 1 {
        print("0 1")
    } else {
        arr[0][0] = 1
        arr[1][1] = 1
        for i in 2...n {
            arr[i][0] = arr[i - 1][0] + arr[i - 2][0]
            arr[i][1] = arr[i - 1][1] + arr[i - 2][1]
        }
        print("\(arr[n][0]) \(arr[n][1])")
    }
    testcase -= 1
}

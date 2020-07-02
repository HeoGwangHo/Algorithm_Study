// MARK: 수 찾기
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").compactMap{Int($0)}
let m = Int(readLine()!)!
var ans = readLine()!.split(separator: " ").compactMap{Int($0)}
arr.sort()

for i in 0..<m {
    var left = 0
    var right = n - 1
    var flag = false
    
    while left <= right {
        let mid = (left + right) / 2
        
        if arr[mid] == ans[i] {
            flag = true
            break
        } else if arr[mid] > ans[i] {
            right = mid - 1
        } else if arr[mid] < ans[i] {
            left = mid + 1
        }
    }
    
    if flag {
        print(1)
    } else {
        print(0)
    }
}

// MARK: 보물
let n = Int(readLine()!)!
var arr1 = readLine()!.split(separator: " ").compactMap{Int($0)}
var arr2 = readLine()!.split(separator: " ").compactMap{Int($0)}
var ans = 0
arr1.sort()
arr2.sort(by: >)
for i in 0..<n {
    ans += arr1[i] * arr2[i]
}
print(ans)

// MARK: 저울
let N = Int(readLine()!)!
var arr = Array(readLine()!.split(separator: " ").compactMap{Int($0)}).sorted() // 오름차순 정렬
var sum = 0

for i in 0..<N {
    if sum + 1 < arr[i] {
        break
    }
    sum += arr[i]
}

print(sum + 1)


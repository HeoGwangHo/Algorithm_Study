// MARK: 문자열
let input = readLine()!.split(separator: " ")
var A = Array(input[0])
var B = Array(input[1])
var count = [Int]()

for i in 0...B.count - A.count {
    var num = 0
    var idx = i
    for j in 0..<A.count {
        if A[j] != B[idx] {
            num += 1
        }
        idx += 1
    }
    count.append(num)
}
print(count.min()!)

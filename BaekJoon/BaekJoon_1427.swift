// MARK: 소트인사이드
var n = Int(readLine()!)!
var array = [Int]()
while n > 0 {
    array.append(n % 10)
    n /= 10
}
array.sort(by: >)

for i in 0..<array.count {
    print(array[i], terminator: "")
}

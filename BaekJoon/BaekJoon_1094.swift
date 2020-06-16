// MARK: 막대기
var x = Int(readLine()!)!
var arr = [64, 32, 16, 8, 4, 2, 1]
var count = 0

while true {
    if x == 0 {
        break
    }
    
    for i in 0..<arr.count {
        if x >= arr[i] {
            x -= arr[i]
            arr.remove(at: i)
            count += 1
            break
        }
    }
}
print(count)

// MARK: 가장 큰 금민수
var n = Int(readLine()!)!

while true {
    var num = n
    var set = Set<Int>()
    while num > 0 {
        set.insert(num % 10)
        num /= 10
    }
    
    if set.count == 1 {
        if set.contains(7) {
            print(n)
            break
        } else if set.contains(4) {
            print(n)
            break
        }
    } else if set.count == 2 {
        if set.contains(4) && set.contains(7) {
            print(n)
            break
        }
    }
    n -= 1
}

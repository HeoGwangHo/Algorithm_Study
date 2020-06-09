// MARK: 거스름돈
let input = Int(readLine()!)!
var num = 1000 - input
var count = 0

while num > 0 {
    if num >= 500 {
        num -= 500
        count += 1
    } else if num >= 100 {
        num -= 100
        count += 1
    } else if num >= 50 {
        num -= 50
        count += 1
    } else if num >= 10 {
        num -= 10
        count += 1
    } else if num >= 5 {
        num -= 5
        count += 1
    } else if num >= 1{
        num -= 1
        count += 1
    }
}
print(count)

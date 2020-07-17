// MARK: - 영화감독 숌
var n = Int(readLine()!)!
var start = 665 // 시작 순서


while n > 0 { // n이 0이 되면 탈출
    start += 1
    var num = start // 기준이 되는 숫자 +1 해주고 복사
    var count = 0
    
    while num > 0 { // 6이 연속으로 3번 나오는지 검사
        let temp = num % 10
        if temp == 6 {
            count += 1
        } else if count < 3 { // 6이 연속으로 나오지 않고, count가 3보다 작다면 리셋
            count = 0
        }
        num /= 10
    }
    
    if count >= 3 { // 6이 연속으로 3번 나오면 n -= 1
        n -= 1
    }
}
print(start)

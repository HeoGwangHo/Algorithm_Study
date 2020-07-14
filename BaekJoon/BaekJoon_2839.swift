// MARK: - 설탕 배달
var n = Int(readLine()!)!
var ans = 0

while n > 0 {
    // 무게가 큰 5를 먼저 빼고 안되면 3을 -해준다
    if n % 5 == 0 {
        n -= 5
        ans += 1
    } else if n % 3 == 0 {
        n -= 3
        ans += 1
    } else if n > 5 {
        n -= 5
        ans += 1
    } else {
        // 남은 n이 5의 배수도 아니고 3의 배수도 아닌데 5보다 작다면 -1
        ans = -1
        break
    }
}
print(ans)

// MARK: 금민수의 개수
let ab = readLine()!.split(separator: " ").compactMap{Int($0)}
var ans = 0

func kminsu(num: Int64) {
    if num > ab[1] { // num이 범위를 벗어나면 리턴
        return
    }
    
    if ab[0] <= num && num <= ab[1] {
        // 범위 내에 있으면 개수 + 1
        ans += 1
    }
    
    // 자리수를 늘려서 4를 추가할 경우와 7을 추가할 경우
    kminsu(num: num * 10 + 4)
    kminsu(num: num * 10 + 7)
}

kminsu(num: 4)
kminsu(num: 7)

print(ans)

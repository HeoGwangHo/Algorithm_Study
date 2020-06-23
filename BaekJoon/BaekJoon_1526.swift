// MARK: 가장 큰 금민수
/*
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
*/
// var.2
var n = Int(readLine()!)!
var ans = 0

func minsu(num: Int) {
    if num > n { // num이 n을 넘어가면 리턴
        return
    }
    if ans <= num { // num들 중에 최대값 갱신
        ans = num
    }
    // 자리수를 늘려가면서 4와 7을 추가해줬을 때
    minsu(num: num * 10 + 4)
    minsu(num: num * 10 + 7)
}

minsu(num: 4)
minsu(num: 7)
print(ans)


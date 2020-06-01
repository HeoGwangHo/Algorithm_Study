// MARK: 셀프 넘버
let N = 10000
var arr = Array(repeating: false, count: N + 1) // 1부터 연산해야 하므로 + 1

// 셀프 넘버 판단하는 함수
func selfNumber(n : Int) -> Int {
    var num = n
    var sum = num // sum에 먼저 n을 더해 줌
    
    while true { // 무한루프
        
        if num == 0 { // 0이되면 break
            break
        }
        
        sum += num % 10 // 입력받은 1의 자리 더해주기
        num = num / 10 // 입력받은수 자릿수 감소
        
    }
    
    return sum
}

for i in 1...N { // 1부터 10000까지
    let idx = selfNumber(n: i)
    
    if idx <= N { // 셀프 넘버가 아니면
        arr[idx] = true
    }
    
}

// 출력
for i in 1...N {
    if !arr[i] {
        print(i)
    }
}

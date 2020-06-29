// MARK: 잃어버린 괄호
let input = Array(readLine()!)
var temp = ""
var bool = true
var ans = 0
var num = 0

for i in 0..<input.count {
    if bool { // 첫 - 가 나오기 전까지 값을 더해줌
        if input[i] == "-" {
            ans += Int(temp)!
            temp = ""
            bool = false
        } else if input[i] == "+" {
            ans += Int(temp)!
            temp = ""
        } else {
            temp += String(input[i])
        }
    } else { // num에 값을 더해주다가 -를 만나면 ans에 num을 빼준다
        if input[i] == "-" {
            ans -= num + Int(temp)!
            num = 0
            temp = ""
        } else if input[i] == "+" {
            num += Int(temp)!
            temp = ""
        } else {
            temp += String(input[i])
        }
    }
}

// 마지막 연산자와 bool값을 체크해서 값 출력
if num > 0 && temp != "" {
    print(ans - (num + Int(temp)!))
} else {
    if bool {
        print(ans + Int(temp)!)
    } else {
        print(ans - Int(temp)!)
    }
}

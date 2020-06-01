// MARK: 최소, 최대

// 제한시간 1초, 1,000,000개의 정수가 주어지므로 일반적인 방법으로은 시간초과
// 공백으로 나누지 않고 String으로 입력받아 공백을 제외하고 Int형으로 바꿔준 뒤 최소, 최대값 비교

let n = Int(readLine()!)! // 정수의 갯수
let line = readLine()!
var min = 1000000
var max = -1000000
var str = ""

for index in line + " " {
    if index != " " {
        str += String(index)
    }
    if index == " " {
        if Int(str)! >= max {
            max = Int(str)!
        }
        if Int(str)! <= min {
            min = Int(str)!
        }
        str = ""
    }
}

print(min, max)

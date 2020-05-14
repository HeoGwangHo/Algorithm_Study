import Foundation

let N = Int(readLine()!)! // 수의 갯수
let input = readLine()!.split(separator: " ").compactMap{Int(String($0))} // 수열
let oper = readLine()!.split(separator: " ").compactMap{Int(String($0))} // 연산자의 갯수 +, -, *, %순서
var maxResult: Int = -1000000000
var minResult: Int = 1000000000

func Operator(plus: Int, minus: Int, multiply: Int, divide: Int, count: Int, sum: Int) {
    if count == N {
        maxResult = max(maxResult, sum)
        minResult = min(minResult, sum)
    }
    
    if plus > 0 {
        Operator(plus: plus - 1, minus: minus, multiply: multiply, divide: divide, count: count + 1, sum: sum + input[count])
    }
    if minus > 0 {
        Operator(plus: plus, minus: minus - 1, multiply: multiply, divide: divide, count: count + 1, sum: sum - input[count])
    }
    if multiply > 0 {
        Operator(plus: plus, minus: minus, multiply: multiply - 1, divide: divide, count: count + 1, sum: sum * input[count])
    }
    if divide > 0 {
        Operator(plus: plus, minus: minus, multiply: multiply, divide: divide - 1, count: count + 1, sum: sum / input[count])
    }
}

Operator(plus: oper[0], minus: oper[1], multiply: oper[2], divide: oper[3], count: 1, sum: input[0])

print(maxResult)
print(minResult)

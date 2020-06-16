// MARK: 방학숙제
let L = Int(readLine()!)! // 방학 일수
let A = Int(readLine()!)! // 국어 숙제량
let B = Int(readLine()!)! // 수학 숭제량
let C = Int(readLine()!)! // 일일 국어 공부량
let D = Int(readLine()!)! // 일일 수학 공부량
var num1 = A / C + 1
var num2 = B / D + 1

if A % C == 0 {
    num1 = A / C
}
if B % D == 0 {
    num2 = B / D
}

print(L - max(num1, num2))


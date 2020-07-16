// MARK: - 상수
var input = Array(readLine()!) // 입력
var arr = [Int]() // 뒤집은 두 수를 비교할 배열
var str = ""

while !input.isEmpty { // input가 비어있을 때까지 반복
    let num = input.removeLast()
    if num != " " {
        str += String(num)
    }
    
    if str.count == 3 {
        arr.append(Int(str)!)
        str = ""
    }
}
print(arr.max()!)

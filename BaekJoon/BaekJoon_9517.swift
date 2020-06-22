// MARK: 아이 러브 크로아티아
var k = Int(readLine()!)! // 시작사람의 번호
let n = Int(readLine()!)! // 질문의 갯수
var num = 0
var max = 220

for _ in 0..<n {
    let line = readLine()!.split(separator: " ")
    num += Int(line[0])!
    if num < max {
        if line[1] == "T" {
            if k == 8 {
                k -= 7
            } else {
                k += 1
            }
        }
    } else {
        print(k)
        break
    }
}

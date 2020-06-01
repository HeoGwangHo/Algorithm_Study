// MARK: 키로거

let T = Int(readLine()!)! // 테스트 케이스
var input = Array(repeating: "", count: T) // 비밀번호 입력

for i in 0..<T {
    var left = [Character]()
    var right = [Character]()
    
    input[i] = readLine()!
    let arr = Array(input[i])
    
    for j in 0..<arr.count {
        if arr[j] != "<" && arr[j] != ">" && arr[j] != "-" {
            left.append(arr[j])
        }
        else if arr[j] == "<" {
            if !left.isEmpty{
                right.append(left.removeLast())
            }
        }
        else if arr[j] == ">" {
            if !right.isEmpty{
                left.append(right.removeLast())
            }
        }
        else if arr[j] == "-" {
            if !left.isEmpty{
                left.removeLast()
            }
        }
    }
    
    var answer = left
    answer.append(contentsOf: right.reversed())
    
    print(String(answer))
}

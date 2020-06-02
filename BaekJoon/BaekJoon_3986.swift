// MARK: 좋은 단어
let N = Int(readLine()!)! // 단어의 수
var count = 0 // 정답을 담아 줄 변수

for _ in 0..<N {
    let line = readLine()!.compactMap{String($0)} // 단어를 입력받음
    var str = [String]() // 스택역할을 할 배열 초기화
    
    for j in 0..<line.count {
        if !str.isEmpty { // 비어있지 않다면
            if str.last == line[j] { // 스택을 마지막과 현재 값을 비교 같으면 pop
                str.removeLast()
            } else { // 아니면 push
                str.append(line[j])
            }
        } else { // 비어있다면 push
            str.append(line[j])
        }
    }
    
    if str.isEmpty { // 스택에 남아있는게 없다면 좋은단어
        count += 1
    }
}
print(count)

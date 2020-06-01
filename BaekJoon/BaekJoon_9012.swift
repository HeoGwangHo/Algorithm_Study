// MARK: 괄호
let T = Int(readLine()!)! // 테스트 케이스 개수
var str = [String]()
var stack = ""

for _ in 0..<T {
    let line = readLine()!
    str.append(line)
}

for i in 0..<str.count {
    stack = ""
    let line = Array(str[i])
    
    for j in 0..<line.count {
        
        if line[j] == "(" {
            stack.append("(")
        }
        
        if line[j] == ")" && !stack.isEmpty {
            stack.removeLast()
        } else if line[j] == ")" && stack.isEmpty {
            print("NO")
            break
        }
        
        if j == line.count - 1 {
            if stack.isEmpty {
                print("YES")
            } else {
                print("NO")
            }
        }
    }
}

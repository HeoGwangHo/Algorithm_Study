// MARK: 탑
struct Stack {
    var index: Int
    var height: Int
}

let N = Int(readLine()!)! // 탑의 수
let tops = readLine()!.split(separator: " ").compactMap{Int($0)} // 탑들의 높이를 배열로 받아옴
var answer = "0 " // 정답 출력 처음탑의 정답은 무조건 0
var st = [Stack]() // 탑의 높이와 위치를 저장할 배열

st.append(Stack(index: 1, height: tops[0])) // 첫 번째 탑의 높이와 위치를 저장

for i in 1..<N {
    
    while !st.isEmpty {
        if st.last!.height > tops[i] { // 스택이 비어있지 않고 스택에 있는 탑보다 현재 탑의 높이가 높다면
            answer += "\(st.last!.index) " // 정답에 +
            break
        }
        st.removeLast() // 현제 스택에 있는 값을 제거
    }
    if st.isEmpty {
        answer += "0 " // 비어있다면 0 출력
    }
    st.append(Stack(index: i + 1, height: tops[i]))
}

print(answer)

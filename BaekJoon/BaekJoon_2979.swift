// MARK: 트럭주차
let input = readLine()!.split(separator: " ").compactMap{Int($0)}
var arr = Array(repeating: 0, count: 101)
var answer = 0

for _ in 0..<3 {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    for i in 1..<line[1] {
        if i >= line[0] && i <= line[1] {
            arr[i] += 1
        }
    }
}

for index in arr {
    if index == 1 {
        answer += input[0]
    } else if index == 2 {
        answer += input[1] * 2
    } else if index == 3 {
        answer += input[2] * 3
    }
}
print(answer)

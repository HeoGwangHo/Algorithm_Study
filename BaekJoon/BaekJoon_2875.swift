// MARK: 대회 or 인턴
var input = readLine()!.split(separator: " ").compactMap{Int($0)} // 여학생 수, 남학생 수, 인턴 수
var answer = 0

while true {
    if input[0] < 2 || input[1] < 1 {
        break
    }
    input[0] -= 2
    input[1] -= 1
    answer += 1
}

if input[0] > 0 { input[2] -= input[0] }
if input[1] > 0 { input[2] -= input[1] }

while input[2] > 0 {
    input[2] -= 3
    answer -= 1
}
print(answer)

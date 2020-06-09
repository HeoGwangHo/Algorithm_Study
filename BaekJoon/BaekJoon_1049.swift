// MARK: 기타줄
let input = readLine()!.split(separator: " ").compactMap{Int($0)} // 기타줄 개수와 브랜드 개수
var N = input[0]
var answer = 0
var pac = 1001
var sin = 1001

for _ in 0..<input[1] {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    if line[0] < pac {
        pac = line[0]
    }
    if line[1] < sin {
        sin = line[1]
    }
}

while N >= 0 {
    if N >= 6 {
        answer += min(pac, sin * 6)
        N -= 6
    } else {
        answer += min(pac, sin * N)
        N -= 6
    }
}

// MARK: var.2
//if N >= 6 {
//    answer = min(pac, sin * 6) * (N / 6)
//    N %= 6
//}
//
//if N < 6 {
//    answer += min(pac, sin * N)
//}

print(answer)

// MARK: 정수 삼각형
var arr = [[Int]]()
var answer = 0
let N = Int(readLine()!)!

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}
    arr.append(line)
}

for i in 1..<N {
    for j in 0...i {
        if arr[i][j] != -1 {
            if j == 0 {
                arr[i][j] = arr[i][j] + arr[i - 1][j]
            } else if i == j {
                arr[i][j] = arr[i][j] + arr[i - 1][j - 1]
            } else {
                arr[i][j] = max(arr[i - 1][j], arr[i - 1][j - 1]) + arr[i][j]
            }
        }
    }
    if i == N - 1{
        for j in 0..<N{
            if answer < arr[i][j] {
                answer = arr[i][j]
            }
        }
    }
}
print(answer)

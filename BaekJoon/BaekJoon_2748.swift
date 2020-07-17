// MARK: - 피보나치 수 2
let n = Int(readLine()!)!
var arr = [0, 1, 1]

// n의 범위는 90까지이므로 미리 구해준다
for i in 3...90 {
    arr.append(arr[i - 1] + arr[i - 2])
}
print(arr[n])

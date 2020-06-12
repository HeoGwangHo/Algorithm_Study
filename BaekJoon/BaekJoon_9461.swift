// MARK: 파도반 수열
let T = Int(readLine()!)!
var arr: [Int] = [0, 1, 1, 1, 2, 2, 3, 4, 5, 7, 9]

// 미리 100까지 값을 구해논다
var count = 6
for i in 10..<100 {
    arr.append(arr[i] + arr[count])
    count += 1
}
 // 입력한 값에 맞게 출력
for _ in 0..<T {
    let input = Int(readLine()!)!
    print(arr[input])
}

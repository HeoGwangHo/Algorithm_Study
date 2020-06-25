// MARK: 회전하는 큐
let nm = readLine()!.split(separator: " ").compactMap{Int($0)} // 큐의 크기, 뽑아야할 갯수
var input = readLine()!.split(separator: " ").compactMap{Int($0)} // 뽑아내려는 수 순서
var arr = Array<Int>(1...nm[0]) // 큐
var ans = 0 // 정답

while !input.isEmpty {
    var left = 0
    var right = 0
    if input[0] == arr[0] { // 첫번째 요소만 비교해서 같으면 1번연산 수행
        arr.removeFirst()
        input.removeFirst()
    } else {
        // 2번 연산과 3번 연산했을 때의 각 비용 계산
        for i in 0..<arr.count {
            if input[0] == arr[i] {
                left = i
            }
        }
        for i in stride(from: arr.count, to: 0, by: -1) {
            if input[0] == arr[i - 1] {
                right = arr.count - (i - 1)
            }
        }
        // 2번 과 3번중 작은 연산 수행
        if left < right {
            while input[0] != arr[0] {
                arr.append(arr.removeFirst())
                ans += 1
            }
            arr.removeFirst()
            input.removeFirst()
        } else {
            while input[0] != arr[0] {
                arr.insert(arr.removeLast(), at: 0)
                ans += 1
            }
            arr.removeFirst()
            input.removeFirst()
        }
    }
}
print(ans)

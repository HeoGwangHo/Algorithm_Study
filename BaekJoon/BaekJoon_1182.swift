// MARK: 부분수열의 합
import Foundation

func Combination(_ : [Int], sum: Int, idx: Int) {
    // idx 인덱스가 배열의 끝까지 탐색했을 때
    if(idx == arr.count) {
        
        if(sum == input[1]) {
            count += 1
        }
        
        return
    }
    
    Combination(arr, sum: sum + arr[idx], idx: idx + 1)
    Combination(arr, sum: sum, idx: idx + 1)
}

let input = readLine()!.split(separator: " ").compactMap{Int($0)} // 정수의 개수를 나타내는 N과 정수 S
let arr = readLine()!.split(separator: " ").compactMap{Int($0)} // N개의 정수
var count = 0 // 수열의 갯수

Combination(arr, sum: 0, idx: 0)

print((input[1] == 0 ? count - 1 : count))


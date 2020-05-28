// MARK: 블랙잭
import Foundation

let input = readLine()!.split(separator: " ").compactMap{Int($0)}
let N = input[0] // 카드의 개수
let M = input[1] // 카드의 합
let cards = readLine()!.split(separator: " ").compactMap{Int($0)}
var sum = 0
var arr = [Int]()

func Combination(count: Int, idx: Int) {
    if count == 3 {
        if sum <= M {
            arr.append(sum)
        }
        return
    }
    
    if idx == cards.count {
        return
    }
    
    sum += cards[idx]
    
    Combination(count: count + 1, idx: idx + 1)
    sum -= cards[idx]
    Combination(count: count, idx: idx + 1)
}

Combination(count: 0, idx: 0)
print(arr.max()!)

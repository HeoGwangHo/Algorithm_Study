// MARK: 로또
import Foundation

func Combination(num : [Int], arr: [Int], idx1: Int, idx2: Int) {
    var num = num
    if(idx1 == num.count){
        for i in 0..<num.count{
            print(num[i], terminator: " ")
        }
        print()
        return
    }
    if(idx2 == arr.count){
        return
    }
    
    num[idx1] = arr[idx2]
    Combination(num: num,arr: arr, idx1: idx1 + 1, idx2: idx2 + 1)
    Combination(num: num,arr: arr, idx1: idx1, idx2: idx2 + 1)
}

while true {
    let input = Array(readLine()!.split(separator: " ")) // 입력 받은 배열
    let arr = input.map{Int($0)}
    let num = Array(repeating: 0, count: 6)

    // 0을 입력 받으면 종료
    if arr[0] == 0 {
        break
    }
    
    // 함수 호출 idx2가 1로 시작하는 이유 = 입력 받은 배열의 0번 째 인덱스는 연산에 쓰이는 정보가 아니기 때문
    Combination(num: num, arr: arr as! [Int], idx1: 0, idx2: 1)
    print()
}

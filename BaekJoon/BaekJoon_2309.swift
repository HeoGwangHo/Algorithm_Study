// MARK: 일곱 난쟁이
import Foundation

var arr = Array(repeating: 0, count: 9) // 난쟁이들의 키를 담을 배열
var num = Array(repeating: 0, count: 7) // 실제 난쟁이들을 담아 둘 배열
var isFind = false

for i in 0..<9 {
    arr[i] = Int(readLine()!)! // 입력받은 순으로 배열에 저장
}

arr.sort() // 배열을 오름차순으로 저장

func Combination(_ : [Int], _: [Int], sum: Int, idx1: Int, idx2: Int) {
    if isFind{
        return
    }
    
    
    if idx2 == 7 { // num에 난쟁이들이 7명 다 들어가면
        if sum == 100 { // 키의 합이 100인지 판별
            for i in 0..<num.count{
                print(num[i])
            }
            isFind = true
        }
        
        return
    }
    
    if(idx1 == arr.count){ // arr의 배열 끝까지 순회하면 리턴
        return
    }
    
    num[idx2] = arr[idx1]
    
    // arr과 num배열의 인덱스를 하나씩 증가시키고 sum에 키를 저장
    Combination(arr, num, sum: sum + arr[idx1], idx1: idx1 + 1, idx2: idx2 + 1)
    // arr의 인덱스만 증가시켜줌
    Combination(arr, num, sum: sum, idx1: idx1 + 1, idx2: idx2)
}

Combination(arr, num, sum: 0, idx1: 0, idx2: 0)

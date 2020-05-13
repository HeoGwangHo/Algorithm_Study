//MARK:문제 설명
/*
문제 설명
한자리 숫자가 적힌 종이 조각이 흩어져있습니다. 흩어진 종이 조각을 붙여 소수를 몇 개 만들 수 있는지 알아내려 합니다.

각 종이 조각에 적힌 숫자가 적힌 문자열 numbers가 주어졌을 때, 종이 조각으로 만들 수 있는 소수가 몇 개인지 return 하도록 solution 함수를 완성해주세요.

제한사항
numbers는 길이 1 이상 7 이하인 문자열입니다.
numbers는 0~9까지 숫자만으로 이루어져 있습니다.
013은 0, 1, 3 숫자가 적힌 종이 조각이 흩어져있다는 의미입니다.
입출력 예
numbers    return
17    3
011    2
입출력 예 설명
예제 #1
[1, 7]으로는 소수 [7, 17, 71]를 만들 수 있습니다.

예제 #2
[0, 1, 1]으로는 소수 [11, 101]를 만들 수 있습니다.

11과 011은 같은 숫자로 취급합니다.
 */

//MARK: 소수 찾기2
import Foundation
 
func solution(_ numbers:String) -> Int {
    var answer = 0
    let map = numbers.compactMap{String($0)}
    var arr2 = [String:Int]()
    var arr1 = [String]()
    var set:Set<Int> = []
    
    //숫자 중 중복이 있는지 찾기
    for i in map {
        set.insert(Int(i)!)
        if arr1.contains(i){
            arr2[i]! += 1
            continue
        }
        arr2[i] = 1
        arr1.append(i)
    }
    
    //숫자 모든 조합
    var array = Array(repeating: [String](), count: numbers.count)
    array[0] = map
    if numbers.count > 1 {
        for i in 1...numbers.count-1{
            for j in 0..<array[i-1].count{
                for k in 0..<numbers.count{
                    let a = "\(map[k])\(array[i-1][j])"
                    if a.map({String($0)}).filter({$0 == map[k]}).count <= arr2[map[k]]!{
                        array[i].append(a)
                        set.insert(Int(a)!)
                    }
                }
            }
        }
    }
    
    //소수 찾기
    for n in set{
        var count = 0
        if n == 1 || n == 0{
            continue
        }
        for i in 2...n{
        if n%i == 0{
            count += 1
            if count > 1{
                break
            }
            }
        }
        if count == 1 {
            answer += 1
        }
    }
    return answer
}

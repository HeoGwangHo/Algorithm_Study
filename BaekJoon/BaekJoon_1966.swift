// MARK: 프린터 큐
import Foundation

struct Doc {
    var index: Int
    var imp: Int
}

let testCase = Int(readLine()!)! // 테스트 케이스

// 입력받은 숫자 만큼 반복
for _ in 0..<testCase {
    let num = Array(readLine()!.split(separator: " ")).compactMap{Int($0)} // 문서 갯수와 구하고자 하는 값
    let arr = Array(readLine()!.split(separator: " ")).compactMap{Int($0)} // 문서들의 중요도 배열
    
    var darr = [Doc]() // 문서의 순서와 중요도를 담을 배열
    var str = [Doc]() // 큐를 대신할 배열
    
    for j in 0..<num[0] {
        darr.append(Doc(index: j, imp: arr[j]))
        str.append(Doc(index: j, imp: arr[j]))
    }
    
    // darr을 중요도 순으로 정렬하는데 중요도가 같은 경우 인덱스 순으로 정렬
    darr = darr.sorted(by: { (d1, d2) -> Bool in
        if(d1.imp == d2.imp){
            return d1.index < d2.index
        } else{
            return d1.imp > d2.imp
        }
    })
    
    // 조건에 맞게 확인
    var n = 0, m = 0, count = 0
    while true {
        if darr[n].imp == str[m].imp {
            count += 1
            if str[m].index == num[1] {
                print(count)
                break
            }
            n += 1
            m += 1
        } else {
            str.append(str[m])
            m += 1
        }
    }
}


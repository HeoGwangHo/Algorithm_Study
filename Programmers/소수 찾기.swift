//MARK:문제 설명
/*문제 설명
1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환하는 함수, solution을 만들어 보세요.

소수는 1과 자기 자신으로만 나누어지는 수를 의미합니다.
(1은 소수가 아닙니다.)

제한 조건
n은 2이상 1000000이하의 자연수입니다.
입출력 예
n    result
10    4
5    3
입출력 예 설명
입출력 예 #1
1부터 10 사이의 소수는 [2,3,5,7] 4개가 존재하므로 4를 반환

입출력 예 #2
1부터 5 사이의 소수는 [2,3,5] 3개가 존재하므로 3를 반환*/

//MARK: 소수 찾기
import Foundation

// 에라토스테네스의 체
func solution(_ n:Int) -> Int {
    var answer = 0
    var arr = Array(repeating: 0, count: n + 1)
    
    // 2부터 n까지의 수 배열에 넣음
    for i in 2...n {
        arr[i] = i
    }
    
    // 2부터 시작해서 그 수의 배수들을 0으로 만들어줌
    for i in 2...n {
        if arr[i] == 0 {
            continue
        }
        
        var j = i * 2
        while j <= n {
            arr[j] = 0
            j += i
        }
    }
    
    // 배열에서 0이 아닌 것들의 갯수 = 소수의 갯수
    for  i in 2...n {
        if arr[i] != 0 {
            answer += 1
        }
    }
    return answer
}

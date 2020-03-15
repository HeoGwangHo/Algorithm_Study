//MARK:문제 설명
/*문제 설명
수포자는 수학을 포기한 사람의 준말입니다. 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.

1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...

1번 문제부터 마지막 문제까지의 정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하도록 solution 함수를 작성해주세요.

제한 조건
시험은 최대 10,000 문제로 구성되어있습니다.
문제의 정답은 1, 2, 3, 4, 5중 하나입니다.
가장 높은 점수를 받은 사람이 여럿일 경우, return하는 값을 오름차순 정렬해주세요.
입출력 예
answers    return
[1,2,3,4,5]    [1]
[1,3,2,4,2]    [1,2,3]
입출력 예 설명
입출력 예 #1

수포자 1은 모든 문제를 맞혔습니다.
수포자 2는 모든 문제를 틀렸습니다.
수포자 3은 모든 문제를 틀렸습니다.
따라서 가장 문제를 많이 맞힌 사람은 수포자 1입니다.

입출력 예 #2

모든 사람이 2문제씩을 맞췄습니다.
*/

//MARK: 모의고사
import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var answer: [Int] = []
    var a: [Int] = []
    var b: [Int] = []
    var c: [Int] = []
    let b1: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let c1: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var count: [Int] = [0,0,0]
    var num = 0
    
    for i in 0..<answers.count {
        num += 1
        a.append(num)
        if num == 5 {num = 0}
        
        let num1 = i % 8
        switch(num1){
        case 0: b.append(b1[0])
        case 1: b.append(b1[1])
        case 2: b.append(b1[2])
        case 3: b.append(b1[3])
        case 4: b.append(b1[4])
        case 5: b.append(b1[5])
        case 6: b.append(b1[6])
        case 7: b.append(b1[7])
        default: break
        }
        
        let num2 = i % 10
        switch(num2){
        case 0: c.append(c1[0])
        case 1: c.append(c1[1])
        case 2: c.append(c1[2])
        case 3: c.append(c1[3])
        case 4: c.append(c1[4])
        case 5: c.append(c1[5])
        case 6: c.append(c1[6])
        case 7: c.append(c1[7])
        case 8: c.append(c1[8])
        case 9: c.append(c1[9])
        default: break
        }
    }
    
    for i in 0..<answers.count {
        if(answers[i] == a[i]){count[0] += 1}
        if(answers[i] == b[i]){count[1] += 1}
        if(answers[i] == c[i]){count[2] += 1}
    }
    
    var max = 0
    for i in 0..<count.count {
        if(max < count[i]) {max = count[i]}
    }
    
    var sum = 0
    for i in 0..<count.count {
        if(max == count[i]){sum = sum + 1}
    }
    
    var n = 0
    for i in 0..<count.count {
        if(count[i] == max){
            answer.append(i + 1)
            n = n + 1
        }
    }
    return answer
}

//MARK:문제 설명
/*
어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 예를 들어 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다. "z"는 1만큼 밀면 "a"가 됩니다. 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.

제한 조건
공백은 아무리 밀어도 공백입니다.
s는 알파벳 소문자, 대문자, 공백으로만 이루어져 있습니다.
s의 길이는 8000이하입니다.
n은 1 이상, 25이하인 자연수입니다.
입출력 예
s    n    result
"AB"    1    "BC"
"z"    1    "a"
"a B z"    4    "e F d"
 */

//MARK: 시저암호
func solution(_ s:String, _ n:Int) -> String {
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    let ALPHABET = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    let str = s.map{String($0)}
    var answer: [String] = []

    for i in 0..<str.count {
        for j in 0..<26 {
            if str[i] == " " {
                answer.append(" ")
                break
            }
        
            if j < (26 - n) && alphabet[j] == str[i] {
                answer.append(alphabet[j + n])
            } else if j < (26 - n) && ALPHABET[j] == str[i] {
                answer.append(ALPHABET[j + n])
            } else if j >= (26 - n) && alphabet[j] == str[i] {
                answer.append(alphabet[(j + n) % 26])
            } else if j >= (26 - n) && ALPHABET[j] == str[i] {
                answer.append(ALPHABET[(j + n) % 26])
            }
            
        }
    }
    
    return answer.joined()
}

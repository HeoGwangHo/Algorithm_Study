// MARK: - 나이순 정렬
struct member {
    let age: Int // 나이
    let name: String // 이름
    let order: Int // 가입한 순서
}

let n = Int(readLine()!)! // 회원 수
var arr = [member]() // 회원의 나이, 이름, 가입한 순서를 저장할 member배열

for i in 1...n {
    let line = readLine()!.split(separator: " ")
    arr.append(member(age: Int(String(line[0]))!, name: String(line[1]), order: i))
}

// 나이가 적은 순으로 정렬하는데 나이가 같으면 가입한 순서가 빠른 순으로 정렬
arr.sort(by: { (d1, d2) -> Bool in
    if d1.age == d2.age {
        return d1.order < d2.order
    } else {
        return d1.age < d2.age
    }
})

// 정렬된 배열의 나이와 이름 출력
for i in arr {
    print(i.age, i.name)
}

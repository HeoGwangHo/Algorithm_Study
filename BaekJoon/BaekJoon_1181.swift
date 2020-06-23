// MARK: 단어정렬
let n = Int(readLine()!)!
var str = [String]()

for _ in 0..<n {
    let line = readLine()!
    str.append(line)
}
str = Array(Set(str)) // Set를 이용해 중복을 제거하고 배열로 변환
// 길이가 짧은순 and 길이가 같을 경우 사전순으로 정렬
str = str.sorted(by: { (d1, d2) -> Bool in
    if d1.count == d2.count {
        return d1 < d2
    } else {
        return d1.count < d2.count
    }
})

for i in str {
    print(i)
}

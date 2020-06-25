// MARK: 도서관
let nm = readLine()!.split(separator: " ").compactMap{Int($0)}
let arr = readLine()!.split(separator: " ").compactMap{Int($0)}
var plus = [Int]()
var minus = [Int]()
var ans = 0
var idx = 0

for i in 0..<arr.count {
    if arr[i] > 0 {
        plus.append(arr[i])
    } else {
        minus.append(abs(arr[i]))
    }
}

plus.sort(by: >)
minus.sort(by: >)

while idx < plus.count {
    ans += plus[idx] * 2
    idx += nm[1]
}

idx = 0
while idx < minus.count {
    ans += minus[idx] * 2
    idx += nm[1]
}

if plus.first ?? 0 > minus.first ?? 0 {
    ans -= plus[0]
} else {
    ans -= minus[0]
}

print(ans)


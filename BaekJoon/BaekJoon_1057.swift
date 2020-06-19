// MARK: 토너먼트
let input = readLine()!.split(separator: " ").compactMap{Int($0)}
var kim = min(input[1], input[2])
var lim = max(input[1], input[2])
var count = 1

if kim % 2 == 0 {
    kim = kim / 2
} else {
    kim = kim / 2 + 1
}
if lim % 2 == 0 {
    lim = lim / 2
} else {
    lim = lim / 2 + 1
}

while true {
    if kim == lim {
        print(count)
        break
    }
    if kim % 2 == 0 {
        kim = kim / 2
    } else {
        kim = kim / 2 + 1
    }
    if lim % 2 == 0 {
        lim = lim / 2
    } else {
        lim = lim / 2 + 1
    }
    count += 1
}



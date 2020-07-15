// MARK: - ACM 호텔
var t = Int(readLine()!)!

while t > 0 {
    var line = readLine()!.split(separator: " ").compactMap{Int($0)}
    var ans = 1
    
    while line[2] > line[0] {
        line[2] -= line[0]
        ans += 1
    }
    
    if ans < 10 {
        print("\(line[2])0\(ans)")
    } else {
        let ans = "\(line[2])" + "\(ans)"
        print(ans)
    }
    
    t -= 1
}

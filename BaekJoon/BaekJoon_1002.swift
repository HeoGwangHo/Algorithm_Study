// MARK: - 터렛
let t = Int(readLine()!)!

for _ in 0..<t {
    var line = readLine()!.split(separator: " ").compactMap{Int($0)}
    
    if line[2] > line[5] { // r1 > r2
        line.swapAt(2, 5)
    }
    let add = (line[2] + line[5]) * (line[2] + line[5])
    let sub = (line[5] - line[2]) * (line[5] - line[2])
    let d = ((line[0] - line[3]) * (line[0] - line[3])) + ((line[1] - line[4]) * (line[1] - line[4]))
    
    if d < add && d > sub { // 원이 두 점에서 만나는 경우
        print(2)
    } else if d == add || (d == sub && d != 0) { // 외접, 내접하는 경우 (한 점에서 만남)
        print(1)
    } else if d < sub || d > add { // 하나의 원이 다른 원을 포함 or 서로 떨어져 있는 경우
        print(0)
    } else if d == 0 {
        if line[2] == line[5] { // 두 원이 일치 하는 경우
            print(-1)
        } else {
            print(0)
        }
    }
}

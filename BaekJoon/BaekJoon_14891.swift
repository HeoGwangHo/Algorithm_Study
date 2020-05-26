// MARK: 톱니바퀴
import Foundation

var gears = [String]()
for _ in 0..<4 {
    gears.append(readLine()!)
}
let k = Int(readLine()!)! // 회전수

for _ in 0..<k {
    let line = readLine()!.split(separator: " ").compactMap{Int($0)}

    leftRotate(idx: line[0] - 1, w: line[1])
    rightRotate(idx: line[0] - 1, w: line[1])

    if line[1] == 1{
        gears[line[0] - 1].insert(gears[line[0] - 1].removeLast(), at: gears[line[0] - 1].startIndex)
    } else {
        gears[line[0] - 1].append(gears[line[0] - 1].removeFirst())
    }
}

func leftRotate(idx: Int, w: Int) {
    if idx == 0 {
        return
    }
    var ws = Array(repeating: 0, count: 4)
    ws[idx] = w

    for i in stride(from: idx - 1, through: 0, by: -1) {
        if gears[i + 1][gears[i + 1].index(gears[i + 1].startIndex, offsetBy: 6)] == gears[i][gears[i].index(gears[i].startIndex, offsetBy: 2)] {
            ws[i] = 0
        } else {
            ws[i] = ws[i + 1] * -1
        }
    }


    for i in stride(from: idx - 1, through: 0, by: -1) {
        if ws[i] == 1 {
            gears[i].insert(gears[i].removeLast(), at: gears[i].startIndex)
        } else if ws[i] == -1 {
            gears[i].append(gears[i].removeFirst())
        }
    }
}

func rightRotate(idx: Int, w: Int) {
    if idx == 3 {
        return
    }
    var ws = Array(repeating: 0, count: 4)
    ws[idx] = w

    for i in idx + 1..<4 {
        if gears[i][gears[i].index(gears[i].startIndex, offsetBy: 6)] == gears[i - 1][gears[i - 1].index(gears[i - 1].startIndex, offsetBy: 2)] {
            ws[i] = 0
           } else {
            ws[i] = ws[i - 1] * -1
        }
    }

    for i in idx + 1..<4 {
        if ws[i] == 1 {
            gears[i].insert(gears[i].removeLast(), at: gears[i].startIndex)
        } else if ws[i] == -1 {
            gears[i].append(gears[i].removeFirst())
        }
    }
}

var score = 0, power = 1
for i in 0..<4 {
    score += gears[i].first == "0" ? 0 : power
    power *= 2
}

print(score)

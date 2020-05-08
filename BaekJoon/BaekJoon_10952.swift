// MARK: A+B - 5
import Foundation

var boo = true

while boo {
    let line = readLine()!.components(separatedBy: " ").map{Int($0)!}
    if line[0] == 0 && line[1] == 0 {
        boo = false
        break
    }
    print(line[0] + line[1])
}

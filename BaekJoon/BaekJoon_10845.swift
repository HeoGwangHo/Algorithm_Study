// MARK: 큐
let n = Int(readLine()!)!
var str = [String]()

for _ in 0..<n {
    let line = readLine()!.split(separator: " ")
    if line[0] == "push" {
        str.append(String(line[1]))
    } else if line[0] == "pop" {
        if !str.isEmpty {
            print(str.removeFirst())
        } else {
            print("-1")
        }
    } else if line[0] == "size" {
        print(str.count)
    } else if line[0] == "empty" {
        if str.isEmpty {
            print("1")
        } else {
            print("0")
        }
    } else if line[0] == "front" {
        print(str.first ?? "-1")
    } else if line[0] == "back" {
        print(str.last ?? "-1")
    }
    
}

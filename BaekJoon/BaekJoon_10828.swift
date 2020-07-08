// MARK: 스택
let n = Int(readLine()!)!
var arr = [String]()

for _ in 0..<n {
    let line = readLine()!.split(separator: " ")
    if line[0] == "push" {
        arr.append(String(line[1]))
    } else if line[0] == "top" {
        print(arr.last ?? "-1")
    } else if line[0] == "pop" {
        if !arr.isEmpty {
            print(arr.removeLast())
        } else {
            print("-1")
        }
    } else if line[0] == "size" {
        print(arr.count)
    } else if line[0] == "empty" {
        if arr.isEmpty {
            print(1)
        } else {
            print(0)
        }
    }
}

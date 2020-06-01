// MARK: 후위 표기식2
import Foundation

let N = Int(readLine()!)!
let line = Array(readLine()!)
var arr = Array(repeating: 0, count: N)

for i in 0..<N {
    arr[i] = Int(readLine()!)!
}

var stack = [Double]()
for i in 0..<line.count {
    
    if line[i] != "+" && line[i] != "-" && line[i] != "/" && line[i] != "*" {
        let num = line[i].asciiValue! - Character("A").asciiValue!
        stack.append(Double(arr[Int(num)]))
        
    } else if line[i] == "+" {
        
        let num1 = stack.removeLast()
        let num2 = stack.removeLast()
        stack.append(num2 + num1)
        
    } else if line[i] == "-" {
        
        let num1 = stack.removeLast()
        let num2 = stack.removeLast()
        stack.append(num2 - num1)
        
    } else if line[i] == "*" {
        
        let num1 = stack.removeLast()
        let num2 = stack.removeLast()
        stack.append(num2 * num1)
        
    } else if line [i] == "/" {
        
        let num1 = stack.removeLast()
        let num2 = stack.removeLast()
        stack.append(num2 / num1)
        
    }
}
print(String(format: "%.2f", stack[0]))

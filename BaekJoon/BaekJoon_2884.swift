import Foundation

var input = readLine()!.components(separatedBy: " ").map{ Int($0)! }

if input[1] >= 45 {
    input[1] = input[1] - 45
} else if input[1] == 0 || input[1] < 45 {
    if input[0] == 0 {
        input[0] = 24
    }
    input[0] = input[0] + -1
    input[1] = input[1] + 60 - 45
}
print(input[0], input[1])

// MARK: 영식이와 친구들
let nml = readLine()!.split(separator: " ").compactMap{Int($0)}
var arr = Array(repeating: 0, count: nml[0])
var count = 0
var idx = 0

arr[idx] = 1
while !arr.contains(nml[1]) {
    if arr[idx] % 2 == 1 && idx + nml[2] < arr.count {
        count += 1
        idx += nml[2]
        arr[idx] += 1
    } else if arr[idx] % 2 == 1 && idx + nml[2] >= arr.count {
        count += 1
        idx = (idx + nml[2]) - arr.count
        arr[idx] += 1
    } else if arr[idx] % 2 == 0 && idx - nml[2] < 0 {
        count += 1
        idx = arr.count - (nml[2] - idx)
        arr[idx] += 1
    } else if arr[idx] % 2 == 0 && idx - nml[2] >= 0 {
        count += 1
        idx -= nml[2]
        arr[idx] += 1
    }
}
print(count)

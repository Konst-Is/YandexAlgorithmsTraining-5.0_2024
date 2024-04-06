let n = Int(readLine()!)!
let arr = (readLine()!).split(separator: " ").map { Int($0)! }
let dict = arr.reduce(into: [:]) {$0[$1, default: 0] += 1}
var maxCount = 0
if n == 1 {
    print(0)
} else {
    for key in dict.keys {
        let count = dict[key]! + dict[key + 1, default: 0]
        maxCount = count > maxCount ? count : maxCount
        }
    print(n - maxCount)
}

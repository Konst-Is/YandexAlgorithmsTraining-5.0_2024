let n = Int(readLine()!)!
let ropes = (readLine()!).split(separator: " ").map { Int($0)! }
var max = ropes[0]
var sum = ropes[0]
for i in 1..<ropes.count {
    sum += ropes[i]
    max = ropes[i] > max ? ropes[i] : max
}
let result = max - (sum - max)
print(result > 0 ? result : sum)

let input1 = (readLine()!).split(separator: ":").map { Int($0)! }
var g1 = input1[0]
var g2 = input1[1]

let input2 = (readLine()!).split(separator: ":").map { Int($0)! }
var q1 = input2[0]
var q2 = input2[1]

var h = Int(readLine()!)!

var result = 0

let sum1 = g1 + q1
let sum2 = g2 + q2

if sum1 > sum2 {
    result = 0
} else if sum1 == sum2 {
    if (h == 1 && q1 > g2) || (h == 2 && g1 > q2) {
        result = 0
    } else {
        result = 1
    }
} else if (h == 1 && q1 + (sum2 - sum1) > g2) || (h == 2 && g1 > q2) {
    result = sum2 - sum1
} else {
    result = sum2 - sum1 + 1
}

print(result)

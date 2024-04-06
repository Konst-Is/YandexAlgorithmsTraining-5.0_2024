import Foundation

let n = Int(readLine()!)!
var answer = [Int]()

if n == 1 {
    print("1/1")
} else {
    let k = Int((sqrt(1 + 8 * Double(n)) - 1) / 2)
    let delta = n - k * (k + 1) / 2
    if k % 2 == 0 {
        if delta == 0 {
            answer += [1, k]
        } else {
            let numerator = delta
            let denominator = k + 2 - delta
            answer += [numerator, denominator]
        }
    } else {
        if delta == 0 {
            answer += [k, 1]
        } else {
            let numerator = k + 2 - delta
            let denominator = delta
            answer += [numerator, denominator]
        }
    }
}

print(answer.map { String($0) }.joined(separator: "/"))

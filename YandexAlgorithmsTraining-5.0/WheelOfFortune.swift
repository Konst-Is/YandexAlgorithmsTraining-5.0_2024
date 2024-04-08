let n = Int(readLine()!)!
var numbers = (readLine()!).split(separator: " ").map { Int($0)! }
let maxNumber = numbers.max()!
let input = (readLine()!).split(separator: " ").map { Int($0)! }
var a = input[0]
var b = input[1]
var k = input[2]
let nCount = numbers.count
var maximum = 0
if (b - a) / k >= nCount {
    maximum = maxNumber
} else {
    for v in stride(from: a, through: b, by: k) {
        let index = ((v - 1) / k) % nCount
        if index == 0 {
            maximum = numbers[0] > maximum ? numbers[0] : maximum
            if maximum == maxNumber {
                break
            }
        } else {
            let newMax1 = numbers[index]
            let newMax2 = numbers[nCount - index]
            maximum = max(newMax1, newMax2) > maximum ? max(newMax1, newMax2) : maximum
            if maximum == maxNumber {
                break
            }
        }
    }
}
print(maximum)

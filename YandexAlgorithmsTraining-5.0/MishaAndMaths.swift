let n = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }
var result = numbers[0]
var signs = ""
for i in 1...(n - 1) {
    if result % 2 != 0 {
        if numbers[i] % 2 != 0 {
            result = 1
            signs.append("x")
        } else {
            result = 1
            signs.append("+")
        }
    } else {
        result += numbers[i]
        if result % 2 == 0 {
            result = 2
        } else {
            result = 1
        }
        signs.append("+")
    }
}
print(signs)

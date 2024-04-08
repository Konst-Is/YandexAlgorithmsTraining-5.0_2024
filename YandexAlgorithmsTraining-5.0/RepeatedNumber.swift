let input = (readLine()!).split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
var result = "NO"
let numbers = (readLine()!).split(separator: " ").map { Int($0)! }
let dict = numbers.reduce(into: [:]) {$0[$1, default: 0] += 1}
if n == 1 {
    print("NO")
} else if k >= numbers.count {
    let set = Set(numbers)
    if set.count < numbers.count {
        print("YES")
    } else {
        print("NO")
    }
} else {
    for i in 0..<(numbers.count - k) where dict[numbers[i]]! > 1 {
        if numbers[(i + 1)...(i + k)].contains(numbers[i]) {
            result = "YES"
            break
        }
    }
    print(result)
}

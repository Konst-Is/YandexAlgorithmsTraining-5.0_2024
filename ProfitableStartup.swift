let input = (readLine()!).split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
let d = input[2]
var result = String(n)
if k == 0 {
    print(-1)
} else if d == 0 {
    if n % k == 0 {
        print(n)
    } else {
        print(-1)
    }
} else {
outerLoop: for i in 1...d {
        let tenResult = Int(result)! * 10
        let multiplier = (tenResult + 9) / k
        if (tenResult...(tenResult + 9)).contains(multiplier * k) {
            result = String(multiplier * k)
            if (i + 1) <= d {
                for _ in (i + 1)...d {
                    result.append("0")
                }
                break outerLoop
            }
        } else {
            result = "-1"
            break
        }
    }
print(result)
}

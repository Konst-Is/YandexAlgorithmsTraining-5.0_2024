let n = Int(readLine()!)!
if n == 0 {
    print(0)
} else {
    var result = 0
    for k in 1...n {
        if k * (k + 1) * (k + 2) / 6 + k * (k + 1) / 2 - 1 <= n {
            result = k
        } else {
            break
        }
    }
    print(result)
}

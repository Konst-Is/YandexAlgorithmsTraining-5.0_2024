let parameters = (readLine()!).split(separator: " ").map { Int($0)! }
let n = parameters[0]
let k = parameters[1]
var maxProfit = 0
if n == 1 {
    print(0)
} else {
    let prices = (readLine()!).split(separator: " ").map { Int($0)! }
    for i in 0...(prices.count - 2) {
        for j in 1...k where (i + j) <= (prices.count - 1) {
            let delta = prices[i + j] - prices[i]
            maxProfit = delta > maxProfit ? delta : maxProfit
        }
    }
    print(maxProfit)
}

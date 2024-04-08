// Для решения задачи рассчитываем массив префиксных сумм, затем осуществляем бинарный поиск индекса по этому массиву
let input = (readLine()!).split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
let a = [0] + (readLine()!).split(separator: " ").map { Int($0)! }
var answer = [Int]()
var prefSum = Array(repeating: 0, count: n + 1)
for i in 1...n {
    prefSum[i] = prefSum[i - 1] + a[i]
}
for _ in 1...m {
    let input = (readLine()!).split(separator: " ").map { Int($0)! }
    let numberOfRegiments = input[0]
    let numberOfOrcs = input[1]
    var l = 1
    var r = n + 1 - numberOfRegiments
    while l < r {
        let m = (l + r) / 2
        if prefSum[m + numberOfRegiments - 1] - prefSum[m - 1] >= numberOfOrcs {
            r = m
        } else {
            l = m + 1
        }
    }
    if prefSum[l + numberOfRegiments - 1] - prefSum[l - 1] == numberOfOrcs {
        answer.append(l)
    } else {
        answer.append(-1)
    }
}
print(answer.map { String($0) }.joined(separator: "\n"))

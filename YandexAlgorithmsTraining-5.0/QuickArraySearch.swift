let n = Int(readLine()!)!
var arr = (readLine()!).split(separator: " ").map { Int($0)! }
arr = arr.sorted()
let k = Int(readLine()!)!
var answers = [Int]()
func binSearch(arr: [Int], key: Int) -> Int {
    var l = 0
    var r = arr.count
    while l < r {
        let m = (l + r) / 2
        if arr[m] >= key {
            r = m
        } else {
            l = m + 1
        }
    }
    return l
}
for _ in 0..<k {
    let request = (readLine()!).split(separator: " ").map { Int($0)! }
    let index1 = binSearch(arr: arr, key: request[0])
    let index2 = binSearch(arr: arr, key: request[1] + 1)
    answers.append(index2 - index1)
}
print(answers.map { String($0) }.joined(separator: " "))

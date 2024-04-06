let n1 = Int(readLine()!)!
let set1 = Set((readLine()!).split(separator: " ").map { Int($0)! })
let n2 = Int(readLine()!)!
let set2 = Set((readLine()!).split(separator: " ").map { Int($0)! })
let n3 = Int(readLine()!)!
let set3 = Set((readLine()!).split(separator: " ").map { Int($0)! })
var maximum = 0
var result = Set<Int>()
for number in set1 {
    if set2.contains(number) {
        result.insert(number)
    }
    if set3.contains(number) {
        result.insert(number)
    }
}
for number in set2 {
    if set3.contains(number) {
        result.insert(number)
    }
}
if result.isEmpty {
    print("")
} else {
    print(result.sorted().map { String($0) }.joined(separator: " "))
}

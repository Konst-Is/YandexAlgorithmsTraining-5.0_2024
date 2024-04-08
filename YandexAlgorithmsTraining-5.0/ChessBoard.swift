let n = Int(readLine()!)!
var coordinates = [(Int, Int)]()
for _ in 0..<n {
    let square = (readLine()!).split(separator: " ").map { Int($0)! }
    coordinates.append((square[0], square[1]))
}
if n == 1 {
    print(4)
} else {
    var joint = 0
    for i in 0..<(n - 1) {
        for j in (i + 1)..<n {
            if coordinates[i].0 == coordinates[j].0 && abs(coordinates[i].1 - coordinates[j].1) == 1 {
                joint += 1
            }
            if coordinates[i].1 == coordinates[j].1 && abs(coordinates[i].0 - coordinates[j].0) == 1 {
                joint += 1
            }
        }
    }
    print(n * 4 - joint * 2)
}

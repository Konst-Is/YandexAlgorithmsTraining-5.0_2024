let k = Int(readLine()!)!
let firstCoordinate = (readLine()!).split(separator: " ").map { Int($0)! }
var minX = firstCoordinate[0]
var maxX = firstCoordinate[0]
var minY = firstCoordinate[1]
var maxY = firstCoordinate[1]
if k == 1 {
    print(minX, minY, maxX, maxY, separator: " ")
} else {
    for _ in 1...(k - 1) {
        let coordinate = (readLine()!).split(separator: " ").map { Int($0)! }
        minX = coordinate[0] < minX ? coordinate[0] : minX
        maxX = coordinate[0] > maxX ? coordinate[0] : maxX
        minY = coordinate[1] < minY ? coordinate[1] : minY
        maxY = coordinate[1] > maxY ? coordinate[1] : maxY
    }
    print(minX, minY, maxX, maxY, separator: " ")
}

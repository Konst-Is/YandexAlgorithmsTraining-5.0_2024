let n = Int(readLine()!)!
var spaces = [Int]()
for _ in 0...(n - 1) {
    spaces.append(Int(readLine()!)!)
}
var minNumberOfKeyStrokes = 0
for space in spaces {
    if space == 0 {
        continue
    }
    let remainerOfDivision = space % 4
    if remainerOfDivision < 3 {
        minNumberOfKeyStrokes += (space / 4 + remainerOfDivision)
    } else {
        minNumberOfKeyStrokes += ((space + 1) / 4 + 1)
    }
}
print(minNumberOfKeyStrokes)

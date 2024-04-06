let n = Int(readLine()!)!

var spaces = [Int]()

for _ in 0...(n - 1) {
    spaces.append(Int(readLine()!)!)
}

var minNumberOfKeystrokes = 0

for space in spaces {
    if space == 0 {
        continue
    }

    let remainerOfDivision = space % 4
    
    if remainerOfDivision < 3 {
        minNumberOfKeystrokes += (space / 4 + remainerOfDivision)
    } else {
        minNumberOfKeystrokes += ((space + 1) / 4 + 1)
    }
}

print(minNumberOfKeystrokes)

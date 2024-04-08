let str = (readLine()!).split(separator: " ").map { Int($0)! }
let n = str[0]
let m = str[1]
var iMax = 0
var iMax1 = 0
var jMax = 0
var jMax1 = 0
var maximum = 0
var arr = [[Int]]()
for _ in 1...n {
    let race = (readLine()!).split(separator: " ").map { Int($0)! }
    arr.append(race)
}
for i in 0..<n {
    for j in 0..<m {
        let value = arr[i][j]
        if value > maximum {
            maximum = value
            iMax = i
            jMax = j
        }
    }
}
maximum = 0
for i in 0..<n where i != iMax { // без 1 строки находим максимум и номер столбца
    for j in 0..<m {
        let value = arr[i][j]
        if value > maximum {
            maximum = value
            jMax1 = j
        }
    }
}
var max1 = 0
for i in 0..<n where i != iMax { // находим максимум первого варианта, iMax и jMax1
    for j in 0..<m where j != jMax1 {
        let value = arr[i][j]
        if value > max1 {
            max1 = value
        }
    }
}
maximum = 0
for i in 0..<n { // без 1 столбца находим максимум и номер строки
    for j in 0..<m where j != jMax {
        let value = arr[i][j]
        if value > maximum {
            maximum = value
            iMax1 = i
        }
    }
}
var max2 = 0
for i in 0..<n where i != iMax1 {
    for j in 0..<m where j != jMax {
        let value = arr[i][j]
        if value > max2 {
            max2 = value
        }
    }
}
if max1 < max2 {
    iMax += 1
    jMax = jMax1 + 1
} else {
    iMax = iMax1 + 1
    jMax += 1
}
print(iMax, jMax, separator: " ")

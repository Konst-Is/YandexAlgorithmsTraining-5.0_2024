let t = Int(readLine()!)!
var nArr = [Int]()
var testData = [[Int]]()

for _ in 1...t {
    let n = Int(readLine()!)!
    nArr.append(n)
    let arr = (readLine()!).split(separator: " ").map { Int($0)! }
    testData.append(arr)
}
for i in 0..<t {
    var tempArr = [Int]()
    var tempCount = 0
    var result = [Int]()
    for number in testData[i] {
        if number == 1 {
            if !tempArr.isEmpty {
                result.append(tempArr.count)
                tempArr = [Int]()
            }
            result.append(1)
            continue
        } else {
            if tempArr.isEmpty {
                tempArr.append(number)
                tempCount = number
                continue
            } else {
                if number < tempCount {
                    if tempArr.count < number {
                        tempArr.append(number)
                        tempCount = number
                        if tempArr.count == tempCount {
                            result.append(tempCount)
                            tempArr = [Int]()
                            continue
                        }
                        continue
                    } else {
                        result.append(tempArr.count)
                        tempArr = [number]
                        tempCount = number
                        continue
                    }
                } else {
                    tempArr.append(number)
                    if tempArr.count == tempCount {
                        result.append(tempCount)
                        tempArr = [Int]()
                        continue
                    }
                }
            }
        }
    }
    if !tempArr.isEmpty {
        result.append(tempArr.count)
    }
    print(result.count)
    print(result.map { String($0) }.joined(separator: " "))
}

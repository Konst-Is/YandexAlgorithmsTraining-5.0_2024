let chessboardSize = 8
var chessBoard = Array(repeating: Array(repeating: "*", count: chessboardSize), count: chessboardSize)
var hasB = false
var indexesOfB = [(Int, Int)]()
var hasR = false
var indexesOfR = [(Int, Int)]()
var hitedChessSquares = [(Int, Int)]()
for i in 0...(chessboardSize - 1) {
    chessBoard[i] = (readLine()!).prefix(chessboardSize).split(separator: "").map { String($0) }
    if chessBoard[i].contains("B") || chessBoard[i].contains("R") {
        for (j,symbol) in chessBoard[i].enumerated() {
            if symbol == "B" {
                hasB = true
                indexesOfB.append((i, j))
                hitedChessSquares.append((i, j))
            } else if symbol == "R" {
                hasR = true
                indexesOfR.append((i, j))
                hitedChessSquares.append((i, j))
            }
        }
    }
}
if !hasR && !hasB {
    print(chessboardSize * chessboardSize)
} else if hitedChessSquares.count == 64 {
    print(0)
} else {
    for indOfR in indexesOfR {
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfR = (indOfR.0, indOfR.1 + k)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfR }) || indexesOfR.contains(where: { $0 == hitedIndexesOfR }) {
                break
            } else if hitedIndexesOfR.1 < chessboardSize {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfR }) {
                    hitedChessSquares.append(hitedIndexesOfR)
                }
            } else {
                break
            }
        }
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfR = (indOfR.0, indOfR.1 - k)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfR }) || indexesOfR.contains(where: { $0 == hitedIndexesOfR }) {
                break
            } else if hitedIndexesOfR.1 >= 0 {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfR }) {
                    hitedChessSquares.append(hitedIndexesOfR)
                }
            } else {
                break
            }
        }
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfR = (indOfR.0 + k, indOfR.1)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfR }) || indexesOfR.contains(where: { $0 == hitedIndexesOfR }) {
                break
            } else if hitedIndexesOfR.0 < chessboardSize {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfR }) {
                    hitedChessSquares.append(hitedIndexesOfR)
                }
            } else {
                break
            }
        }
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfR = (indOfR.0 - k, indOfR.1)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfR }) || indexesOfR.contains(where: { $0 == hitedIndexesOfR }) {
                break
            } else if hitedIndexesOfR.0 >= 0 {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfR }) {
                    hitedChessSquares.append(hitedIndexesOfR)
                }
            } else {
                break
            }
        }
    }
    for indOfB in indexesOfB {
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfB = (indOfB.0 + k, indOfB.1 + k)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfB }) || indexesOfR.contains(where: { $0 == hitedIndexesOfB }) {
                break
            } else if hitedIndexesOfB.0 < chessboardSize && hitedIndexesOfB.1 < chessboardSize {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfB }) {
                    hitedChessSquares.append(hitedIndexesOfB)
                }
            } else {
                break
            }
        }
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfB = (indOfB.0 + k, indOfB.1 - k)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfB }) || indexesOfR.contains(where: { $0 == hitedIndexesOfB }) {
                break
            } else if hitedIndexesOfB.0 < chessboardSize && hitedIndexesOfB.1 >= 0 {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfB }) {
                    hitedChessSquares.append(hitedIndexesOfB)
                }
            } else {
                break
            }
        }
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfB = (indOfB.0 - k, indOfB.1 + k)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfB }) || indexesOfR.contains(where: { $0 == hitedIndexesOfB }) {
                break
            } else if hitedIndexesOfB.0 >= 0 && hitedIndexesOfB.1 < chessboardSize {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfB }) {
                    hitedChessSquares.append(hitedIndexesOfB)
                }
            } else {
                break
            }
        }
        for k in 1...(chessboardSize - 1) {
            let hitedIndexesOfB = (indOfB.0 - k, indOfB.1 - k)
            if indexesOfB.contains(where: { $0 == hitedIndexesOfB }) || indexesOfR.contains(where: { $0 == hitedIndexesOfB }) {
                break
            } else if hitedIndexesOfB.0 >= 0 && hitedIndexesOfB.1 >= 0 {
                if !hitedChessSquares.contains(where: { $0 == hitedIndexesOfB }) {
                    hitedChessSquares.append(hitedIndexesOfB)
                }
            } else {
                break
            }
        }
    }
    print(chessboardSize * chessboardSize - hitedChessSquares.count)
}

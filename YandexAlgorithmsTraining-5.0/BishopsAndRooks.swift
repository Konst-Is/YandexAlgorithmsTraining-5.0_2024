var chessBoard: [[String]] = [Array(repeating: "-", count: 10)] // Создаём барьер из минусов вокруг шахматной доски.
// Это упростит работу с индексами и проверку того, что мы не вышли за пределы индексов
for _ in 1...8 {
    chessBoard.append(["-"] + (readLine()!).prefix(8).split(separator: "").map { String($0) } + ["-"])
}
chessBoard.append(Array(repeating: "-", count: 10))
var shiftArrI = [Int]() // Массив сдвигов по оси i - вспомогательная сущность, 
// которая хранит возможные ходы шахматной фигуры.
var shiftArrJ = [Int]()
var answer = 0
for i in 1...9 {
    for j in 1...9 {
        if chessBoard[i][j] == "R" || chessBoard[i][j] == "B" { // Как только на доске встречается слон или ладья,
            // мы анализируем клетки, которые они бьют, используя массивы сдвигов
            if chessBoard[i][j] == "R" {
                shiftArrI = [0, 0, 1, -1]
                shiftArrJ = [1, -1, 0, 0]
            } else if chessBoard[i][j] == "B" {
                shiftArrI = [1, 1, -1, -1]
                shiftArrJ = [1, -1, 1, -1]
            }
            for direction in 0...3 { // Проходим по всем направлениям массивов сдвигов
                var indexI = i + shiftArrI[direction]
                var indexJ = j + shiftArrJ[direction]
                
                while chessBoard[indexI][indexJ] == "*" || chessBoard[indexI][indexJ] == "." {
                    chessBoard[indexI][indexJ] = "." // Помечаем все клетки, которые бьёт фигура, точками
                    indexI += shiftArrI[direction]
                    indexJ += shiftArrJ[direction]
                }
            }
        }
    }
}
for row in chessBoard { // Проходим во всем клеткам и считаем количество клеток, которые не бьют фигуры
    for cell in row {
        if cell == "*" {
            answer += 1
        }
    }
}
print(answer)

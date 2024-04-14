// Функция моделирует заполнение строк словами и возвращает получившееся количество строк
func getTheNumberOfLines(arr: [Int], stringLength: Int) -> Int {
    var numberOfLines = 0
    var remainingLineSize = 0
    for wordLength in arr {
        if wordLength > stringLength { // В ситуации, когда размер слова больше
        // размера строки возвращаем огромное число.
            return 1000_000_000
        }
        if wordLength <= remainingLineSize {
            remainingLineSize -= (wordLength + 1) // К каждому слову прибавляем пробел
        } else {
            remainingLineSize = stringLength - wordLength - 1
            numberOfLines += 1
        }
    }
    return numberOfLines
}
// Функция возвращает true, если количество строк в левом тексте меньше, чем в правом
func check(a: [Int], b: [Int], w: Int, border: Int) -> Bool {
    return getTheNumberOfLines(arr: a, stringLength: border) < getTheNumberOfLines(arr: b, stringLength: w - border)
}
let input1 = (readLine()!).split(separator: " ").map { Int($0)! }
let w = input1[0]
let a = (readLine()!).split(separator: " ").map { Int($0)! }
let b = (readLine()!).split(separator: " ").map { Int($0)! }
// Используем бинарный поиск для определения границы, при которой левый текст станет больше правого
var l = 0
var r = w
while l < r {
    let m = (l + r) / 2
    if check(a: a, b: b, w: w, border: m) {
        r = m
    } else {
        l = m + 1
    }
}
// Мы проверяем максимальные значения длин текстов в найденном значении границы l (где левый текст больше правого)
// и в значении l - 1 (где левый текст меньше правого). Выбираем из них минимальное количество строк
var answer = min(max(getTheNumberOfLines(arr: a, stringLength: l), getTheNumberOfLines(arr: b, stringLength: w - l)), max(getTheNumberOfLines(arr: a, stringLength: l - 1), getTheNumberOfLines(arr: b, stringLength: w - l + 1)))
print(answer)

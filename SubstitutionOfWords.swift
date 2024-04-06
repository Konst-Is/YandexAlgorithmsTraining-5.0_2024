let dict = Set((readLine()!).split(separator: " ").map { String($0) })
let str = (readLine()!).split(separator: " ").map { String($0) }
var result = str
for (i, word) in str.enumerated() {
    var tempWord = ""
    for letter in word {
        tempWord += String(letter)
        if dict.contains(tempWord) {
            result[i] = tempWord
            break
        }
    }
}
print(result.joined(separator: " "))

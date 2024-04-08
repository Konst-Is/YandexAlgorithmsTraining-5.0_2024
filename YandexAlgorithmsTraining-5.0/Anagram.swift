let str1 = readLine()!
let str2 = readLine()!
var result = "YES"
let dict1 = str1.reduce(into: [:]) {$0[$1, default: 0] += 1}
let dict2 = str2.reduce(into: [:]) {$0[$1, default: 0] += 1}
for (key, value) in dict1 {
    if dict2[key, default: 0] != value {
        result = "NO"
        break
    }
}
print(result)

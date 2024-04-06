let input1 = (readLine()!).split(separator: " ").map { Int($0)! }
var p = input1[0]
var v = input1[1]

let input2 = (readLine()!).split(separator: " ").map { Int($0)! }
var q = input2[0]
var m = input2[1]

var numberOfTrees = 0
let rangeOfVasya = min(p-v, p+v)...max(p-v, p+v)
let rangeOfMasha = min(q-m, q+m)...max(q-m, q+m)

for tree in rangeOfVasya {
    numberOfTrees += 1
}

for tree in rangeOfMasha {
    if !rangeOfVasya.contains(tree) {
        numberOfTrees += 1
    }
}

print(numberOfTrees)

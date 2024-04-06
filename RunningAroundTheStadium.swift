let input = (readLine()!).split(separator: " ").map { Int($0)! }
let l = input[0]
let x1 = input[1]
let v1 = input[2]
let x2 = input[3]
let v2 = input[4]
if v1 == 0 && v2 == 0 {
    if x1 != x2 && x1 != l - x2 {
        print("NO")
    } else {
        print("YES")
        print(0)
    }
} else if v1 == v2 {
    if x1 == x2 || x1 == l - x2 {
        print("YES")
        print(0)
    } else {
        let tMin1 = Double(l - x1 - x2) / Double(v1 + v2)
        let tMin2 = -1 * Double(x1 + x2) / Double(v1 + v2)
        print("YES")
        if tMin1 < 0 && tMin2 >= 0 {
            print(tMin2)
        } else if tMin2 < 0 && tMin1 >= 0 {
            print(tMin1)
        } else {
            print(min(tMin1, tMin2))
        }
    }
} else if x1 == x2 {
    print("YES")
    print(0.0)
} else {
    print("YES")
    var tMin = [Double]()
    for i in 0...2 {
        if i == 0 {
            let tMin1 = Double(x1 - x2) / Double(v2 - v1)
            if tMin1 > 0 {
                tMin.append(tMin1)
            }
            let tMin2 = -1 * Double(x1 + x2) / Double(v1 + v2)
            if tMin2 > 0 {
                tMin.append(tMin2)
            }
        } else {
            let tMin1 = Double(i * l + x1 - x2) / Double(v2 - v1)
            if tMin1 > 0 {
                tMin.append(tMin1)
            }
            let tMin4 = Double((-1) * i * l + x1 - x2) / Double(v2 - v1)
            if tMin4 > 0 {
                tMin.append(tMin4)
            }
            let tMin2 = Double(l * i - x1 - x2) / Double(v1 + v2)
            if tMin2 > 0 {
                tMin.append(tMin2)
            }
            let tMin3 = Double((-1) * l * i - x1 - x2) / Double(v1 + v2)
            if tMin3 > 0 {
                tMin.append(tMin3)
            }
        }
    }
    print(tMin.sorted().first!)
}

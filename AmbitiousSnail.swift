let n = Int(readLine()!)!
var berries = [(Int, Int)]()
var hMax = 0
var good = [Int]()
var bad = [Int]()
var last = 0
for _ in 1...n {
    let str = (readLine()!).split(separator: " ").map { Int($0)! }
    berries.append((str[0], str[1]))
}
if n == 1 {
    print(berries[0].0)
    print(1)
} else {
    for i in 0..<berries.count {
        if berries[i].0 - berries[i].1 > 0 {
            good.append(i + 1)
        } else {
            bad.append(i + 1)
        }
    }
    if bad.isEmpty {
        last = good[0]
        for i in good {
            hMax += (berries[i - 1].0 - berries[i - 1].1)
            if berries[i - 1].1 > berries[last - 1].1 {
                last = i
            }
        }
        good.remove(at: good.lastIndex(where: { $0 == last })!)
        good.append(last)
        print(hMax + berries[last - 1].1)
        for berry in good {
            print("\(berry) ", terminator: "")
        }
    } else if good.isEmpty {
        last = bad[0]
        for i in bad where i != bad.first! {
            if berries[i - 1].0 > berries[last - 1].0 {
                last = i
            }
        }
        bad.remove(at: bad.firstIndex(where: { $0 == last })!)
        bad = [last] + bad
        print(berries[last - 1].0)
        for berry in bad {
            print("\(berry) ", terminator: "")
        }
    } else {
        last = bad[0]
        for i in bad where i != bad.first! {
            if berries[i - 1].0 > berries[last - 1].0 {
                last = i
            }
        }
        var last2 = good[0]

        for i in good {
            hMax += (berries[i - 1].0 - berries[i - 1].1)
            if berries[i - 1].1 > berries[last2 - 1].1 {
                last2 = i
            }
        }
        let newMax = hMax + berries[last2 - 1].1
        let newH = hMax + berries[last - 1].0
        if newMax > newH {
            good.remove(at: good.lastIndex(where: { $0 == last2 })!)
            good.append(last2)
            hMax = newMax
        } else {
            good.append(last)
            bad.remove(at: bad.firstIndex(where: { $0 == last })!)
            hMax = newH
        }
        print(hMax)
        for berry in (good + bad) {
            print("\(berry) ", terminator: "")
        }
    }
}

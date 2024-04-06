let n = Int(readLine()!)!
var ships = [(Int, Int)]()
var minimum = n * n
    for _ in 0..<n {
        let ship = (readLine()!).split(separator: " ").map { Int($0)! }
        ships.append(((ship[0] - 1), (ship[1] - 1)))
    }
    if n == 1 {
        print(0)
    } else {
        for i in 0..<n {
            var column = [String]()
            var tempShips = ships
            var count = 0
            for j in 0..<n {
                if tempShips.contains(where: { $0 == (j, i) }) {
                    column.append("*")
                    tempShips.removeAll(where: { $0 == (j, i) })
                } else {
                    column.append(" ")
                }
            }
            tempShips = tempShips.sorted(by: { $1.0 > $0.0 })
            for k in 0..<n where column[k] != "*" {
                var minSteps = 2 * n
                var ind1 = 0
                var ind2 = 0
                for ship in tempShips {
                    let steps = abs(ship.0 - k) + abs(ship.1 - i)
                    if ship == tempShips.first! {
                        minSteps = steps
                        ind1 = ship.0
                        ind2 = ship.1
                    }
                }
                tempShips.removeAll(where: { $0 == (ind1, ind2) })
                count += minSteps
            }
            minimum = count < minimum ? count : minimum
        }
        print(minimum)
    }

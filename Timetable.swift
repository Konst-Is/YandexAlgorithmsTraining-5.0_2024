let n = Int(readLine()!)!
let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
var months = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]
var monthsOrder = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var holidays = ["Monday" : 0, "Tuesday": 0, "Wednesday": 0, "Thursday": 0, "Friday": 0, "Saturday" : 0, "Sunday" : 0]
var inputHolidays = [(Int, String)]()
var totalOfDays = ["Monday" : 52, "Tuesday": 52, "Wednesday": 52, "Thursday": 52, "Friday": 52, "Saturday" : 52, "Sunday" : 52]
let year = Int(readLine()!)!
var daysInYear = 0
var isHighYear = false
if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
    daysInYear = 366
    months["February"] = 29
    isHighYear = true
} else {
    daysInYear = 365
}
for _ in 0..<n {
    let str = (readLine()!).split(separator: " ")
    let data = Int(str[0])!
    let month = String(str[1])
    inputHolidays.append((data, month))
}
let firstDay = readLine()!
if isHighYear {
    totalOfDays[firstDay] = 53
    let nextDay = (week + week)[week.index(after: week.firstIndex(of: firstDay)!)]
    totalOfDays[nextDay] = 53
} else {
    totalOfDays[firstDay] = 53
}
var totalHolidays = 0
for day in inputHolidays {
    var numberOfDays = 0
    for month in monthsOrder {
        if day.1 == month {
            break
        }
        numberOfDays += months[month]!
    }
    numberOfDays += (day.0 - 1)
    if numberOfDays == 0 {
        holidays[firstDay]! += 1
        totalHolidays += 1
    } else {
        let delta = numberOfDays % 7
        let index = week.firstIndex(of: firstDay)!
        let dayOfWeek = (week + week)[week.index(index, offsetBy: delta)]
        holidays[dayOfWeek]! += 1
        totalHolidays += 1
    }
}
var best = ""
var worse = ""
var max = 0
var min = 367
for day in week {
    var numberOfHolidays = 0
    if holidays[day]! == 0 {
        numberOfHolidays = totalOfDays[day]! + totalHolidays
    } else {
        numberOfHolidays = totalOfDays[day]! + totalHolidays - holidays[day]!
    }
    if numberOfHolidays > max {
        max = numberOfHolidays
        best = day
    }
    if numberOfHolidays < min {
        min = numberOfHolidays
        worse = day
    }
}
print(best, worse, separator: " ")

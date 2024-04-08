let n = Int(readLine()!)!
var tracks = Set<String>()
let k = Int(readLine()!)!
var lovelyTracks = Set((readLine()!).split(separator: " "))
if n == 1 {
    print(k)
    print(lovelyTracks.sorted().joined(separator: " "))
} else {
    for _ in 1..<n {
        let _ = Int(readLine()!)!
        let newTracks = Set((readLine()!).split(separator: " "))
        lovelyTracks = lovelyTracks.intersection(newTracks)
    }
    print(lovelyTracks.count)
    print(lovelyTracks.sorted().joined(separator: " "))
}

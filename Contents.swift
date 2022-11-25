import Foundation


let now = Date().timeIntervalSince1970
let tenMinutesAgo = (now - 600)
let kilometers: Double = 2

let sessionTime = (now - tenMinutesAgo)

let paceInSec = (sessionTime / kilometers)

let paceInMin = (paceInSec / 60)

print(String(format: "%.2f min/km", paceInMin))

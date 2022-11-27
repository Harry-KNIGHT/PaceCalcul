import Foundation

func calculPace(startedSessionEpoch: Double = (Date().timeIntervalSince1970 - 600), nowEpoch: Double = Date().timeIntervalSince1970, meters: Double) -> String {
	let distance: Double = (meters >= 1_000 ? meters / 1_000 : meters)

	let sessionTime = (nowEpoch - startedSessionEpoch)

	let paceInSec = (sessionTime / distance)

	let min = (Int(paceInSec) / 60)
	let sec = (Int(paceInSec) % 60)

	
	return (String(format: "%02i:%02i min/km", min, sec))
}

print(calculPace(meters: 3000))

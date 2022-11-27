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

func calculAverageSpeed(distanceInMeters: Double, timeInSec: Double) -> Double {
	guard timeInSec > 0 else { return 0 }

	let distanceInKM = (distanceInMeters / 1_000)
	let timeInH = (timeInSec / 3600)

	return (distanceInKM / timeInH)
}

print(calculAverageSpeed(distanceInMeters: 2_000, timeInSec: 120))

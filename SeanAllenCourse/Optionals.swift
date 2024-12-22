// Optionals
// One of the safety features in swift is to handle values that may not exist or nil

var ages: [Int] = []
ages.sort()

let oldestAge = ages.last

var allAges: [Int] = [20, 21, 23, 30, 25, 15]
allAges.sort()

let youngesAge = allAges.first

if let oldest = ages.last {
    print("The oldest ages is \(oldest)")
} else {
    print("There is no oldest age. You must have no students.")
}

// nil coalescing
let youngestFromAges = ages.first ?? 0
let youngestFromAllAges = allAges.first ?? 0

// guard statement
func getOldestAge() -> Int {
    guard let oldestAge = ages.last else {
        return 0
    }
    
    // a lot of code
    return oldestAge
}

getOldestAge()

// Force unwrap
// DANGER DANGER DANGER
// !
//let old = ages.last! // The program will crash because it turns out there is no value

let young = allAges.first! // This program will fine

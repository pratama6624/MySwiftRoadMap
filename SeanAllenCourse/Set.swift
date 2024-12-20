// Set
// Set does not allow for duplicate value

var ages: [Int] = [18, 19, 18, 29, 20, 21, 20]

var agesSet: Set<Int> = [1, 2, 3, 4]

agesSet.insert(5)

agesSet

var agesSetFromAges = Set(ages)

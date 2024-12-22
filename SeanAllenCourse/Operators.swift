// Operators

let valueOne: Int = 100
let valueTwo: Int = 88

let sum = valueOne + valueTwo
let minus = valueOne - valueTwo
let multiple = valueOne * valueTwo
let divide = valueOne / valueTwo
let modulus = valueOne % valueTwo

let isEquals: Bool = valueOne == valueTwo // false

var isDarkModeOn: Bool = false

if !isDarkModeOn {
    print("It's so bright in here")
}

// All Operator
/*
     - * / %
     < > >= <=
     ! != == ===
     && ||
     += -= /= *=
 */

let firstname: String = "Kukuh"
let middlename: String = "Nur"
let lastname: String = "Pratama"

let fullname: String = firstname + " " + middlename + " " + lastname

print(fullname)

let agesYoung: [Int] = [20, 21, 19]
let agesOld: [Int] = [50, 60, 70]

let allAges: [Int] = agesYoung + agesOld

print(allAges)

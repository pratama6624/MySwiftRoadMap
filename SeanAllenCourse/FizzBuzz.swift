// FizzBuzz
/*
     Rules:
    1. Show Fizz if naumber is divisible by 3
    2. Show Buzz if naumber is divisible by 5
    3. Show FizzBuzz when a number is divisible by 3 and 5
*/

let numbers: [Int] = Array(1...30)

for number in numbers {
    if(number % 3 == 0 && number % 5 == 0) {
        print("FizzBuzz")
    } else if(number % 3 == 0) {
        print("Fizz")
    } else if(number % 5 == 0) {
        print("Buzz")
    } else {
        print(number)
    }
}

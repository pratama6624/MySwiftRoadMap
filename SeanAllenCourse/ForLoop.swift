// For Loop
let singers: [String] = ["Taylor Swift", "Hayley William", "Emily Armstrong", "Avril Lavigne", "Sia"]

for singer in singers {
    print(singer)
}
print()

for singer in singers where singer == "Sia" {
    print(singer)
}
print()

for i in 0...4 {
    print(i)
}
print()

for i in 0...4 where i < 2 || i > 3 {
    print(i)
}
print()

for _ in 0...4 {
    print("Print ulang 5xl")
}
print()

var randomNumbers: [Int] = []

for _ in 0...5 {
    let random = Int.random(in: 0...100)
    randomNumbers.append(random)
}
print()

for randomNumber in randomNumbers {
    print(randomNumber)
}

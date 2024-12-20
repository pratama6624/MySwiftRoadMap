// Function

func sayHay() {
    print("Hay")
}

sayHay()

func sayHello() -> Void {
    print("Hello")
}

sayHello()

func getName() -> String {
    return "Pratama"
}

print(getName())

func add(one: Int, two: Int) -> Int {
    return one + two
}

print("1 + 2 = \(add(one: 1, two: 2))")

func addMore(_ one: Int, _ two: Int) -> Int {
    return one + two
}

print("1 + 2 = \(addMore(1, 2))")

func introduce(_ name: String, _ age: Int, from city: String) -> String {
    return "Hi, my name is \(name), I am \(age) years old, and I am from \(city)"
}

print(introduce("Pratama", 25, from: "Jakarta"))
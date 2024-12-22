// Self
// Just simple
// Self only refers to the object we are working on or the position of the object itself.

// Learn about the classes to better understand the concepts.
// In the next step
// is about class

// Example in struct
struct Person {
    private var name: String = ""

    init(for name: String) {
        self.name = name // "self.name is properties of struct and name is params"
    }

    func getName() -> String {
        return self.name // You can use self.name or just name
    }
}

var me: Person = Person(for: "Kukuh Nur Pratama")
print("My name is \(me.getName())")

// U can use in class, struct, or enum
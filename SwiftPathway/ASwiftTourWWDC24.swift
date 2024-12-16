
// What is Swift?
/* 
    Modern, expressive, and safe
    Lightweight syntax
    Powerful features
*/

// Swift Core
/*
    1. Value types (let and var)
    2. Errors and optionals
    3. Code organization
    4. Classes
    5. Protocols
    6. Concurrency
    7. Extensibility 
*/

/* --------------------------- */

// 1. Value types
var x: Int = 1
var y: Int = x
x = 42 // x changed to 42
y // y still 1

// No shared state (do not influence each other)
// struct (to combine and accommodate several similar or different data values in one placa

/* --------------------------- */

// 2. Errors
struct User {
    let username: String
    var isVisible: Bool = true
    private(set) var friends: [String] = []
    
    mutating func addFriend(username: String) throws {
        guard username != self.username else {
            throw SocialError.bebefriendingSelf
        }
        guard !friends.contains(username) else {
            throw SocialError.duplicateFriend(username: username)
        }
        friends.append(username)
    }
}

enum SocialError: Error {
    case bebefriendingSelf
    case duplicateFriend(username: String)
}

var alice = User(username: "alice")
do {
    try alice.addFriend(username: "charlie")
    try alice.addFriend(username: "leo")
    try alice.addFriend(username: "charlie") // duplicate error & stop
    try alice.addFriend(username: "mia")
} catch {
    error
}

var allUsers = [
    "alice": alice
]

// 2. Optionals
func findUser(_ username: String) -> User? { // ? = Optional value
    allUsers[username]
}

print(findUser("alice") == nil ? "Founded" : "Not found")

if let charlie = findUser("charlie") {
    print("Fount \(charlie)")
} else {
    print(("Charlie not found"))
}

// let dash = findUser("dash")! // Force unwrapping error

// Optional handling method
/*
    1. Optional binding (if let & guard let)
    2. Nil coalescing operator (??)
    3. Forced unwrapping (!)
    4. Optional chaining
*/

/* --------------------------- */

// 3. Code organization
// Swift access control levels
/*
    1. private (in the same file)
    2. internal (in the same module)
    3. package (in the same package)
    4. public (all)
*/

/* --------------------------- */

// 4. Classes
class Pet {
    var toy: Toy?
    func speak() {}
}

class Cat: Pet {
    override func speak() { print("meow") }
    func purr() { print("purr") }
}

class Dog: Pet {
    override func speak() { print("hug..hug") }
    func purr() { print("purr..purr") }
}

class Toy {}

let pet: Pet = Cat()
pet.speak()

// true
if let cat = pet as? Cat { // Change pet to cat
    cat.purr()
}

// false
if let cat2 = pet as? Dog { // Change pet to dog
    cat2.purr()
} else {
    print("This animal is not a dog") // This in done because the pet is not a dog but a cat
}

// Strong reference and Weak reference
class Example {
    var value: Int = 0
    init(value: Int) {
        self.value = value
        print("value created")
    }
    deinit {
        print("value deallocated")
    }    
}

var strongRef: Example? = Example(value: 50) // Strong ref created
// Weak reference
weak var weakRef = strongRef // Weak ref created
// Strong reference
var newStrongRef = strongRef // Strong ref created

strongRef = nil // ARC deleted strongRef
weakRef?.value // ARC will retain
newStrongRef?.value // New strong reference

newStrongRef = nil // ARC deleted newStrongRef
weakRef?.value // ARC will release the value

/* --------------------------- */

// 5. Protocols
// Protocol is an interface in Java language
// Contract
// Example 1
protocol ScreenViewModel {
    var title: String { get }
    func fetchContent()
}

class HomeViewModel: ScreenViewModel {
    var title = "Home View"
    func fetchContent() {
        print("Fetching home content")
    }
}

class ProfileViewModel: ScreenViewModel {
    var title = "Profile View"
    func fetchContent() {
        print("Fetching profile content")
    }
}

// Example 2
protocol Drawable {
    func draw()
}

class Circle: Drawable {
    func draw() {
        print("Drawing Circle")
    }
}

class Rectangle: Drawable {
    func draw() {
        print("Drawing Rectangle")
    }
}

func render(drawables: [Drawable]) {
    for drawable in drawables {
        drawable.draw()
    }
}

let shape: [Drawable] = [Circle(), Rectangle()]
print("\nCall Drawables")
render(drawables: shape)

// Example 3
protocol AuthService {
    func login(username: String, password: String, completion: (Bool) -> Void)
    func logout()
}

class FirebaseAuthService: AuthService {
    func login(username: String, password: String, completion: (Bool) -> Void) {
        // Firebase login here
    }
    
    func logout() {
        // Firebase logout here
    }
}

// Extension
// Extension does not have the function is odd and is even
// But we can add that functionality to Int with the extension
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return !isEven
    }
}

let number = 42
print(number.isOdd)
print(number.isEven)

// Collections
/*
     1. Array
     2. Dictionary
     3. Set
     4. String
*/

/* --------------------------- */

// 6. Concurrency

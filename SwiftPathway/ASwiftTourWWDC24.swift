
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

// 2. Errors and optionals
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

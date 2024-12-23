// Struct

// If Class = Reference Type
class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init() {}
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
}

// Const = Cannot be changed
let sean = Developer(name: "Sean Allen", jobTitle: "iOS Developer", yearsExp: 5)

// Var = Can be changed
var pratama = Developer(name: "Pratama", jobTitle: "iOS Developer", yearsExp: 0)
var kukuh = pratama
kukuh.name = "Kukuh Nur Pratama"

// Will be the same
kukuh.name
pratama.name

// If Struct = Value Type
struct MobileDeveloper {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init() {}
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
}

var nur = MobileDeveloper(name: "Nur", jobTitle: "iOS Developer", yearsExp: 1)

var lee = nur
lee.jobTitle = "Android Developer"

// Will not be the same
nur.jobTitle
lee.jobTitle

// Inheritance
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
    
    func speakName() -> Void {
        print(name!)
    }
}

class iOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func speakFavoriteFramework() -> Void {
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        } else {
            print("I don't have a favorite framework")
        }
    }
    
    override func speakName() {
        print("\(name!) - \(jobTitle)")
    }
}

class AndroidDeveloper: Developer {
    var favoriteFramework: String?
        
    func speakFavoriteFramework() -> Void {
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        } else {
            print("I don't have a favorite framework")
        }
    }
}

class WebDeveloper: Developer {
    var favoriteFramework: String?
        
    func speakFavoriteFramework() -> Void {
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        } else {
            print("I don't have a favorite framework")
        }
    }
}

let pratama = iOSDeveloper(name: "Pratama", jobTitle: "iOS Developer", yearsExp: 1)

pratama.favoriteFramework = "Vapor"

pratama.speakFavoriteFramework()

pratama.speakName()

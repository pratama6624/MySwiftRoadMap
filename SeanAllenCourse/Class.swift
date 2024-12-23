// Class
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
        print(self.name)
    }
}

let pratama = Developer(name: "Pratama", jobTitle: "iOS Engineer", yearsExp: 1)

pratama.speakName()

let nur = Developer()

nur.speakName()

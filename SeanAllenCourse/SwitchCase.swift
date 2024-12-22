// switch
// Example 1
enum Phone: String {
    case macbookProM2 = "Best for me"
    case asusRogZhepyrusG14 = "Best for gaming"
    case acerNitro15 = "Best value for money"
    case asusTuf15 = "Asus ROG alternative"
}

func getPratamaOpinion(on phone: Phone) -> Void {
    switch phone {
    case .macbookProM2:
        print(phone.rawValue)
    case .asusRogZhepyrusG14:
        print(phone.rawValue)
    case .acerNitro15:
        print(phone.rawValue)
    case .asusTuf15:
        print(phone.rawValue)
    }
}

getPratamaOpinion(on: .asusTuf15)

// Example 2
let matchmakingRank = 88

func determinePlayerLeague(from rank: Int) -> Void {
    switch rank {
    case 0:
        print("Play the game to determine your league")
    case 1..<50:
        print("You are in BRONZE league")
    case 50..<100:
        print("You are in SILVER league")
    case 100..<200:
        print("You are in GOLD league")
    default:
        print("You are in a league of your own, we don't know where you are")
    }
}

determinePlayerLeague(from: matchmakingRank)

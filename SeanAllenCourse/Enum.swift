// Enum
enum Phone {
    case iPhone16
    case iPhone13Mini
    case samsungA51
    case asusRog8
}

func getPratamaOpinion(on phone: Phone) -> Void {
    if phone == .iPhone16 {
        print("This will be my next phone")
    } else if phone == .samsungA51 {
        print("This is my phone now")
    } else if phone == .asusRog8 {
        print("This is phone is crazy overpower")
    } else if phone == .iPhone13Mini {
        print("This cellphone is my favorite but it is old technology")
    }
}

getPratamaOpinion(on: .iPhone16)

// rawValue
enum Labtop: String {
    case macbookProM2 = "Best for me"
    case asusRogZhepyrusG14 = "Best for gaming"
    case acerNitro15 = "Best value for money"
    case asusTuf15 = "Asus ROG alternative"
}

func getLabtopLabel(on labtop: Labtop) -> Void {
    print(labtop.rawValue)
}

getLabtopLabel(on: .macbookProM2)

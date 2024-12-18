// Type Erasure
protocol Animal {
    associatedtype CommodityType: Food
    
    func produce() -> CommodityType
}

struct Chicken: Animal {
    func produce() -> Egg { return Egg() }
}

struct Cow: Animal {
    func produce() -> Milk { return Milk() }
}

struct Goat: Animal {
    func produce() -> Meat { return Meat() }
}

protocol Food {
    
}

struct Egg: Food { }

struct Milk: Food { }

struct Meat: Food { }

struct Farm {
    var animals: [any Animal]
    
    func produceCommodities() -> [any Food] {
        return animals.map { animal in
            animal.produce()
        }
    }
}

var farm = Farm(animals: [Goat(), Chicken(), Cow()])
let commodities = farm.produceCommodities()

for commodity in commodities {
    print("Produce: \(commodity)")
}

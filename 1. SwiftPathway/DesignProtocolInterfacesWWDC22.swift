// Type Erasure
// Example 1
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

// Example 2
// with generic type
print()
protocol PaymentMethod {
    func process(amount: Double)
}

struct CreditCard: PaymentMethod {
    func process(amount: Double) {
        print("Processing \(amount) with Credit Card")
    }
}

struct Paypall: PaymentMethod {
    func process(amount: Double) {
        print("Processing \(amount) with Paypall")
    }
}

struct AnyPaymentMethod: PaymentMethod {
    private let _process: (Double) -> Void
    
    init<M: PaymentMethod>(_ method: M) {
        _process = method.process
    }
    
    func process(amount: Double) {
        _process(amount)
    }
}

let methods: [AnyPaymentMethod] = [AnyPaymentMethod(CreditCard()), AnyPaymentMethod(Paypall())]

for method in methods {
    method.process(amount: 100.0)
}

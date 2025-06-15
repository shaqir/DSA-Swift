
struct Pair<T1, T2>{
    var first: T1
    var second: T2
}

let stringPair = Pair(first: "Hello", second: "World")
let intPair = Pair(first: 1, second: 2)
let doublePair = Pair(first: 1.0, second: 2.0)
  
func isEqual<T: Equatable>(left: T, right: T) -> Bool {
    return left == right
}

struct Contact: Equatable {
    let name: String
    let email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

let oldCampus = Contact(name: "Old Campus", email: "old@example.com")
let newCampus = Contact(name: "New Campus", email: "new@example.com")

print(isEqual(left: oldCampus, right: newCampus))


struct Pair<T1: Comparable, T2: Comparable>{
    var first: T1
    var second: T2
}

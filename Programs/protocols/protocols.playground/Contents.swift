import UIKit

let string = "Hello, World"
print(string)

let number = 42
print(number)

let boolean = false
print(boolean)

class Shoe: CustomStringConvertible {
    
    // This protocol is a computed property
    
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String {
        return "Shoe(color:\(color), size: \(size), hasLaces: \(hasLaces)"
    }
}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
//print(myShoe.color, myShoe.size, myShoe.hasLaces)
print(myShoe)

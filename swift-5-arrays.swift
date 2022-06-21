import UIKit

let arrayInit = [Int](repeating: 0, count: 3) // [0, 0, 0]

var colors = ["yellow", "red", "white", "purple", "red"]

// GETTING INFO
let first = colors[0]                       // "yellow"
let firstColor = colors.first               // "yellow"
let lastColor = colors.last                 // "red"
let redFirst = colors.firstIndex(of: "red") // 1
let redLast = colors.lastIndex(of: "red")   // 4
let isAnyColor = colors.isEmpty             // false
let isContainsRed = colors.contains("red")  // true
let numberOfColors = colors.count           // 5
let firstColors = colors.dropFirst(2)       // return first three elements, do not modefy inital array
                                            // firstColors = ["white", "purple", "red"]
let noLastColor = colors.dropLast()         // all elements, but last element, do not modefy inital array
                                            // noLastColor = ["yellow", "red", "white", "purple"]
let noLast3Colors = colors.dropLast(3)      // all elements, but last 3 element, do not modefy inital array
                                            // noLast3Colors = ["yellow", "red"]



// DELETING
let lastPop = colors.popLast()              // delete last element and return it's value: "red"
colors.removeLast()                         // ["yellow", "red", "white", "purple"] ->
                                            // ["yellow", "red", "white"]
colors.removeFirst()                        // ["yellow", "red", "white"] ->
                                            //           ["red", "white"]
colors.remove(at: 1)                        // ["red", "white"] ->
                                            // ["red"]
colors.removeAll()                          // []



// ADDING
colors.append("brown")                      // [] -> ["brown"]
colors.append(contentsOf: ["blue", "green", "orange"])  // ["brown"] -> ["brown", "blue", "green", "orange"]
colors.insert("black", at: 2)               // ["brown", "blue", "green", "orange"] ->
                                            // ["brown", "blue", "black", "green", "orange"]



// MODEFING
colors.swapAt(0, 1)                         // ["brown", "blue", "black", "green", "orange"] ->
                                            // ["blue", "brown", "black", "green", "orange"]
let sortedColors = colors.sorted()          // ["black", "blue", "brown", "green", "orange"]
colors.sort()                               // sort in place, modefy inital array
let stringColors = colors.joined(separator: "; ")   // "black; blue; brown; green; orange"




// LOOPING
for color in colors {
    print(color)
}

for (index, color) in colors.enumerated() {     // Index: 0, color: black
    print("Index: \(index), color: \(color)")   // Index: 1, color: blue
}                                               // Index: 2, color: brown
                                                // ...
for i in 0..<colors.count {
    print(colors[i])
}

print(colors)
for index in stride(from: 0, to: colors.count, by: 2) {
    print("Color \(colors[index]) at index \(index)")
}

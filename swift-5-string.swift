import Foundation

let hello = "hello"
let world = "world"

var greeting = hello + " " + world // "hello world"
greeting.append("!")  // "hello world!"
greeting += "!"       // "hello world!!"

let upper = greeting.uppercased() // "HELLO WORLD!!"
let lower = greeting.lowercased() // "hello world!!"
let capit = greeting.capitalized  // "Hello World!!"

let charCount = greeting.count // 13

let replacing = greeting.replacingOccurrences(of: "l", with: "1") // he11o wor1d!!

// get first and last char value
let firstCharValue = greeting.first // "h" do not delete a char
let lastCharValue = greeting.last // "!" do not delete a char

// index of the first given char in string, "l" in "hello world"
// why? just, why?!
let first_L_Index = greeting.firstIndex(of: Character.init("l"))?.utf16Offset(in: greeting) // 2


// SUBSTRING from index 2 to 7 included for string 'hello world!'
let substring = greeting[greeting.index(greeting.startIndex, offsetBy: 2)...greeting.index(greeting.startIndex, offsetBy: 7)] // "llo wo"

// inserting char at the end of the sting
greeting.insert("!", at: greeting.endIndex) // hello world!!!
// inserting chat at 4th index
greeting.insert("5", at: greeting.index(greeting.startIndex, offsetBy: 4)) // "hell5o world!!!"
// delete char at 4th index
greeting.remove(at: greeting.index(greeting.startIndex, offsetBy: 4)) // "hello world!!!"
//delete 1st and last chars
let firstCharDelete = greeting.removeFirst() // delete "h" and return it
let lastCharDelete = greeting.removeLast() //the same as 'popLast()'
let lastCharDeleteWithPop = greeting.popLast() // delete "!" and return it
// there is no 'popFirst()' anymore


let words = greeting.split(separator: " ") // ["ello", "world!"]

for char in greeting {
    print(char)
}
for (index, char) in greeting.enumerated() {
    print("index = \(index), character = \(char)")
}


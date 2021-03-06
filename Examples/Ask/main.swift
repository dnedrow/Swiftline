import Swiftline

print("\u{001B}[2J") // Clear screen does not work in lame Xcode terminal.

// Ask for a String
let answer1 = ask("What's your name?")
print("\nYour name is \(answer1)\n")


// Ask for an Int
let age = ask("How old are you?", type: Int.self)
print("\nYour age is \(age)\n")


// Ask with validation
let name = ask("Who are you?") { settings in
    settings.addInvalidCase("Snuffles is not allowed") { value in
        value.contains("Snuffles")
    }
}
print("\nYour are \(name)\n")


// Ask with confirm
let cake = ask("Do you like cake?") { settings in
    settings.confirm = true
}
print("\nYour are \(cake)\n")

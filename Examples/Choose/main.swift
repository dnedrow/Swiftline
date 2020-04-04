import Swiftline

print("\u{001B}[2J") // Clear screen does not work in lame Xcode terminal.

let choice = choose("Whats your favorite programming language? ",
        choices: "Swift", "Objective C", "Ruby", "Python", "Java")
print("You chose \(choice)")


// Choose with Int result
let choice2 = choose("Whats your favorite programming language? ", type: Int.self) { settings in
    settings.addChoice("Swift") { 42 }
    settings.addChoice("Objective C") { 20 }
}
print("You chose \(choice2)")


// Customize prompt
let choice3 = choose("Whats your favorite programming language? ", type: String.self) { settings in
    //choice value will be set to GOOD
    settings.addChoice("Swift") { "GOOD" }

    //choice value will be set to BAD
    settings.addChoice("Java") { "BAD" }

    settings.index = .letters
    settings.indexSuffix = " ----> "
}
print("Your choice is \(choice3)")

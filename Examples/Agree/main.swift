import Swiftline

print("\u{001B}[2J") // Clear screen does not work in lame Xcode terminal.

print(askedAndAnswered(question: "Are you shwifty?"))

func askedAndAnswered(question: String) -> Bool {
    let answer = agree(question)
    return answer
}

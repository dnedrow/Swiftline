import Swiftline


print("\u{001B}[2J") // Clear screen does not work in lame Xcode terminal.

// print(Env.get("PWD")!)
print("All Environment Variables")
print(Env.keys.joined(separator: "\n"))

print("\nPrinting value of PWD")
print(Env.get("PWD")!)

print("\nPrint all Arguments")
print(Args.all)

print("\nPrint parsed Arguments")
print(Args.parsed.flags["target"]!)
print(Args.parsed.flags["framework"]!)
print(Args.parsed.parameters)
